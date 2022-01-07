
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ioport; } ;


 size_t FIFO_READ ;
 size_t FIFO_STATUS ;
 int RF_HAS_DATA ;
 int inb (int ) ;
 TYPE_1__** sc_adapter ;

void flushreadfifo (int card)
{
 while(inb(sc_adapter[card]->ioport[FIFO_STATUS]) & RF_HAS_DATA)
  inb(sc_adapter[card]->ioport[FIFO_READ]);
}
