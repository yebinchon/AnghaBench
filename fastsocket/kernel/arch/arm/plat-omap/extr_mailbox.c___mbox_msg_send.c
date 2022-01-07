
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_mbox {TYPE_2__* txq; TYPE_1__* ops; } ;
typedef int mbox_msg_t ;
struct TYPE_4__ {int (* callback ) (void*) ;} ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ OMAP_MBOX_TYPE2 ;
 scalar_t__ mbox_fifo_full (struct omap_mbox*) ;
 int mbox_fifo_write (struct omap_mbox*,int ) ;
 int mbox_seq_toggle (struct omap_mbox*,int *) ;
 int stub1 (void*) ;
 int udelay (int) ;

__attribute__((used)) static int __mbox_msg_send(struct omap_mbox *mbox, mbox_msg_t msg, void *arg)
{
 int ret = 0, i = 1000;

 while (mbox_fifo_full(mbox)) {
  if (mbox->ops->type == OMAP_MBOX_TYPE2)
   return -1;
  if (--i == 0)
   return -1;
  udelay(1);
 }

 if (arg && mbox->txq->callback) {
  ret = mbox->txq->callback(arg);
  if (ret)
   goto out;
 }

 mbox_seq_toggle(mbox, &msg);
 mbox_fifo_write(mbox, msg);
 out:
 return ret;
}
