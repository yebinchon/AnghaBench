
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmitQel {int * cbuf; struct xmitQel* next; } ;


 int DEBUG_LOWER ;
 int debug ;
 int printk (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int txqueue_lock ;
 struct xmitQel* xmQhd ;
 struct xmitQel* xmQtl ;

__attribute__((used)) static void enQ(struct xmitQel *qel)
{
 unsigned long flags;
 qel->next = ((void*)0);

 spin_lock_irqsave(&txqueue_lock, flags);
 if (xmQtl) {
  xmQtl->next = qel;
 } else {
  xmQhd = qel;
 }
 xmQtl = qel;
 spin_unlock_irqrestore(&txqueue_lock, flags);

 if (debug & DEBUG_LOWER)
  printk("enqueued a 0x%02x command\n",qel->cbuf[0]);
}
