
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct fw_card {int lock; TYPE_1__* irm_node; } ;
typedef int __be32 ;
struct TYPE_2__ {int node_id; } ;


 scalar_t__ CSR_CHANNELS_AVAILABLE_HI ;
 scalar_t__ CSR_CHANNELS_AVAILABLE_LO ;
 scalar_t__ CSR_REGISTER_BASE ;
 int EINVAL ;
 int deallocate_channel (struct fw_card*,int,int,int,int *) ;
 int manage_bandwidth (struct fw_card*,int,int,int,int,int *) ;
 int manage_channel (struct fw_card*,int,int,int,scalar_t__,int,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void fw_iso_resource_manage(struct fw_card *card, int generation,
       u64 channels_mask, int *channel, int *bandwidth,
       bool allocate, __be32 buffer[2])
{
 u32 channels_hi = channels_mask;
 u32 channels_lo = channels_mask >> 32;
 int irm_id, ret, c = -EINVAL;

 spin_lock_irq(&card->lock);
 irm_id = card->irm_node->node_id;
 spin_unlock_irq(&card->lock);

 if (channels_hi)
  c = manage_channel(card, irm_id, generation, channels_hi,
    CSR_REGISTER_BASE + CSR_CHANNELS_AVAILABLE_HI,
    allocate, buffer);
 if (channels_lo && c < 0) {
  c = manage_channel(card, irm_id, generation, channels_lo,
    CSR_REGISTER_BASE + CSR_CHANNELS_AVAILABLE_LO,
    allocate, buffer);
  if (c >= 0)
   c += 32;
 }
 *channel = c;

 if (allocate && channels_mask != 0 && c < 0)
  *bandwidth = 0;

 if (*bandwidth == 0)
  return;

 ret = manage_bandwidth(card, irm_id, generation, *bandwidth,
          allocate, buffer);
 if (ret < 0)
  *bandwidth = 0;

 if (allocate && ret < 0 && c >= 0) {
  deallocate_channel(card, irm_id, generation, c, buffer);
  *channel = ret;
 }
}
