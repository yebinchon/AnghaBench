
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int state; int fnic_lock; } ;
typedef enum fnic_state { ____Placeholder_fnic_state } fnic_state ;






 int fnic_fw_reset_handler (struct fnic*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fnic_set_eth_mode(struct fnic *fnic)
{
 unsigned long flags;
 enum fnic_state old_state;
 int ret;

 spin_lock_irqsave(&fnic->fnic_lock, flags);
again:
 old_state = fnic->state;
 switch (old_state) {
 case 129:
 case 130:
 default:
  fnic->state = 128;
  spin_unlock_irqrestore(&fnic->fnic_lock, flags);

  ret = fnic_fw_reset_handler(fnic);

  spin_lock_irqsave(&fnic->fnic_lock, flags);
  if (fnic->state != 128)
   goto again;
  if (ret)
   fnic->state = old_state;
  break;

 case 128:
 case 131:
  break;
 }
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);
}
