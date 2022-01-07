
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_node {int node_id; struct fw_device* data; } ;
struct fw_device {int work; scalar_t__ config_rom_retries; int generation; int node_id; int max_speed; struct fw_node* node; int state; int config_rom; struct fw_card* card; } ;
struct fw_card {int lock; struct fw_node* root_node; int generation; } ;
struct device {int dummy; } ;


 scalar_t__ FW_DEVICE_GONE ;
 int FW_DEVICE_RUNNING ;
 int PREPARE_DELAYED_WORK (int *,int ) ;
 scalar_t__ atomic_cmpxchg (int *,scalar_t__,int ) ;
 int dev_name (struct device*) ;
 int down_read (int *) ;
 struct fw_device* fw_device (struct device*) ;
 int fw_device_rwsem ;
 int fw_device_update ;
 int fw_notify (char*,int ) ;
 int fw_schedule_bm_work (struct fw_card*,int ) ;
 int is_fw_device (struct device*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int schedule_delayed_work (int *,int ) ;
 int smp_wmb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int up_read (int *) ;

__attribute__((used)) static int lookup_existing_device(struct device *dev, void *data)
{
 struct fw_device *old = fw_device(dev);
 struct fw_device *new = data;
 struct fw_card *card = new->card;
 int match = 0;

 if (!is_fw_device(dev))
  return 0;

 down_read(&fw_device_rwsem);
 spin_lock_irq(&card->lock);

 if (memcmp(old->config_rom, new->config_rom, 6 * 4) == 0 &&
     atomic_cmpxchg(&old->state,
      FW_DEVICE_GONE,
      FW_DEVICE_RUNNING) == FW_DEVICE_GONE) {
  struct fw_node *current_node = new->node;
  struct fw_node *obsolete_node = old->node;

  new->node = obsolete_node;
  new->node->data = new;
  old->node = current_node;
  old->node->data = old;

  old->max_speed = new->max_speed;
  old->node_id = current_node->node_id;
  smp_wmb();
  old->generation = card->generation;
  old->config_rom_retries = 0;
  fw_notify("rediscovered device %s\n", dev_name(dev));

  PREPARE_DELAYED_WORK(&old->work, fw_device_update);
  schedule_delayed_work(&old->work, 0);

  if (current_node == card->root_node)
   fw_schedule_bm_work(card, 0);

  match = 1;
 }

 spin_unlock_irq(&card->lock);
 up_read(&fw_device_rwsem);

 return match;
}
