
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* buffer; int frameSize; int cStat; int forward; } ;
struct TYPE_4__ {int address; int count; } ;
typedef TYPE_2__ TLanList ;


 int printk (char*,...) ;

__attribute__((used)) static void TLan_PrintList( TLanList *list, char *type, int num)
{
 int i;

 printk( "TLAN:   %s List %d at %p\n", type, num, list );
 printk( "TLAN:      Forward    = 0x%08x\n", list->forward );
 printk( "TLAN:      CSTAT      = 0x%04hx\n", list->cStat );
 printk( "TLAN:      Frame Size = 0x%04hx\n", list->frameSize );

 for ( i = 0; i < 2; i++ ) {
  printk( "TLAN:      Buffer[%d].count, addr = 0x%08x, 0x%08x\n",
   i, list->buffer[i].count, list->buffer[i].address );
 }

}
