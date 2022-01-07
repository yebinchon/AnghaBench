
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {unsigned long dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int inb (unsigned long) ;
 int outb (int,unsigned long) ;
 int printk (char*,int,int,int) ;

__attribute__((used)) static int sc1200_dma_end(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 unsigned long dma_base = hwif->dma_base;
 u8 dma_stat;

 dma_stat = inb(dma_base+2);

 if (!(dma_stat & 4))
  printk(" ide_dma_end dma_stat=%0x err=%x newerr=%x\n",
    dma_stat, ((dma_stat&7)!=4), ((dma_stat&2)==2));

 outb(dma_stat|0x1b, dma_base+2);
 outb(inb(dma_base)&~1, dma_base);

 return (dma_stat & 7) != 4;
}
