
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char shmem_magic; size_t shmem_pgport; int devicename; int lock; scalar_t__ rambase; int * ioport; } ;


 int IS_VALID_CARD (int) ;
 size_t SRAM_PAGESIZE ;
 int memcpy_fromio (void*,void*,size_t) ;
 int outb (unsigned char,int ) ;
 int pr_debug (char*,int,...) ;
 TYPE_1__** sc_adapter ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void memcpy_fromshmem(int card, void *dest, const void *src, size_t n)
{
 unsigned long flags;
 unsigned char ch;

 if(!IS_VALID_CARD(card)) {
  pr_debug("Invalid param: %d is not a valid card id\n", card);
  return;
 }

 if(n > SRAM_PAGESIZE) {
  return;
 }




 ch = (unsigned long) src / SRAM_PAGESIZE;
 pr_debug("%s: loaded page %d\n", sc_adapter[card]->devicename,ch);





 spin_lock_irqsave(&sc_adapter[card]->lock, flags);

 outb(((sc_adapter[card]->shmem_magic + ch * SRAM_PAGESIZE) >> 14) | 0x80,
  sc_adapter[card]->ioport[sc_adapter[card]->shmem_pgport]);
 memcpy_fromio(dest,(void *)(sc_adapter[card]->rambase +
  ((unsigned long) src % 0x4000)), n);
 spin_unlock_irqrestore(&sc_adapter[card]->lock, flags);
 pr_debug("%s: set page to %#x\n",sc_adapter[card]->devicename,
  ((sc_adapter[card]->shmem_magic + ch * SRAM_PAGESIZE)>>14)|0x80);



}
