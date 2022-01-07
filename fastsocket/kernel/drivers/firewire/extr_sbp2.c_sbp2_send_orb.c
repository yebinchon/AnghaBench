
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int low; scalar_t__ high; } ;
struct sbp2_orb {TYPE_2__ pointer; int t; int kref; int link; int request_bus; } ;
struct sbp2_logical_unit {int orb_list; int tgt; } ;
struct fw_device {int max_speed; TYPE_1__* card; } ;
struct TYPE_3__ {int lock; } ;


 int TCODE_WRITE_BLOCK_REQUEST ;
 int complete_transaction ;
 int cpu_to_be32 (int ) ;
 int fw_send_request (TYPE_1__*,int *,int ,int,int,int ,int ,TYPE_2__*,int,int ,struct sbp2_orb*) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fw_device* target_device (int ) ;

__attribute__((used)) static void sbp2_send_orb(struct sbp2_orb *orb, struct sbp2_logical_unit *lu,
     int node_id, int generation, u64 offset)
{
 struct fw_device *device = target_device(lu->tgt);
 unsigned long flags;

 orb->pointer.high = 0;
 orb->pointer.low = cpu_to_be32(orb->request_bus);

 spin_lock_irqsave(&device->card->lock, flags);
 list_add_tail(&orb->link, &lu->orb_list);
 spin_unlock_irqrestore(&device->card->lock, flags);


 kref_get(&orb->kref);
 kref_get(&orb->kref);

 fw_send_request(device->card, &orb->t, TCODE_WRITE_BLOCK_REQUEST,
   node_id, generation, device->max_speed, offset,
   &orb->pointer, sizeof(orb->pointer),
   complete_transaction, orb);
}
