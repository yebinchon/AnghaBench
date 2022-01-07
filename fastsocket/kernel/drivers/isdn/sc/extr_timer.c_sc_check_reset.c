
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t shmem_pgport; int shmem_magic; int lock; int reset_timer; int devicename; scalar_t__ StartOnReset; scalar_t__ rambase; int * ioport; } ;


 scalar_t__ CHECKRESET_TIME ;
 unsigned long SIGNATURE ;
 scalar_t__ SIG_OFFSET ;
 int flushreadfifo (int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outb (int ,int) ;
 int pr_debug (char*,int ,...) ;
 TYPE_1__** sc_adapter ;
 int setup_ports (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int startproc (int) ;

void sc_check_reset(unsigned long data)
{
 unsigned long flags;
 unsigned long sig;
 int card = (unsigned int) data;

 pr_debug("%s: check_timer timer called\n",
  sc_adapter[card]->devicename);


 setup_ports(card);

 spin_lock_irqsave(&sc_adapter[card]->lock, flags);
 outb(sc_adapter[card]->ioport[sc_adapter[card]->shmem_pgport],
  (sc_adapter[card]->shmem_magic>>14) | 0x80);
 sig = (unsigned long) *((unsigned long *)(sc_adapter[card]->rambase + SIG_OFFSET));


 if(sig == SIGNATURE) {
  flushreadfifo(card);
  spin_unlock_irqrestore(&sc_adapter[card]->lock, flags);

  if (sc_adapter[card]->StartOnReset)
   startproc(card);
 } else {
  pr_debug("%s: No signature yet, waiting another %lu jiffies.\n",
   sc_adapter[card]->devicename, CHECKRESET_TIME);
  mod_timer(&sc_adapter[card]->reset_timer, jiffies+CHECKRESET_TIME);
  spin_unlock_irqrestore(&sc_adapter[card]->lock, flags);
 }
}
