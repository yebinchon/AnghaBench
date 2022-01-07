
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spu_context {struct spu* spu; } ;
struct spu {int register_lock; TYPE_1__* problem; } ;
struct TYPE_2__ {int mb_stat_R; } ;


 int CLASS2_ENABLE_MAILBOX_INTR ;
 int CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR ;
 int CLASS2_MAILBOX_INTR ;
 int CLASS2_MAILBOX_THRESHOLD_INTR ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int in_be32 (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int spu_int_mask_or (struct spu*,int,int ) ;
 int spu_int_stat_clear (struct spu*,int,int ) ;

__attribute__((used)) static unsigned int spu_hw_mbox_stat_poll(struct spu_context *ctx,
       unsigned int events)
{
 struct spu *spu = ctx->spu;
 int ret = 0;
 u32 stat;

 spin_lock_irq(&spu->register_lock);
 stat = in_be32(&spu->problem->mb_stat_R);






 if (events & (POLLIN | POLLRDNORM)) {
  if (stat & 0xff0000)
   ret |= POLLIN | POLLRDNORM;
  else {
   spu_int_stat_clear(spu, 2, CLASS2_MAILBOX_INTR);
   spu_int_mask_or(spu, 2, CLASS2_ENABLE_MAILBOX_INTR);
  }
 }
 if (events & (POLLOUT | POLLWRNORM)) {
  if (stat & 0x00ff00)
   ret = POLLOUT | POLLWRNORM;
  else {
   spu_int_stat_clear(spu, 2,
     CLASS2_MAILBOX_THRESHOLD_INTR);
   spu_int_mask_or(spu, 2,
     CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR);
  }
 }
 spin_unlock_irq(&spu->register_lock);
 return ret;
}
