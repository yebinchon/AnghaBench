
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rambase; int interrupt; int * ioport; } ;


 size_t EXP_BASE ;
 size_t IRQ_SELECT ;
 int outb (int,int ) ;
 TYPE_1__** sc_adapter ;

__attribute__((used)) static void setup_ports(int card)
{

 outb((sc_adapter[card]->rambase >> 12), sc_adapter[card]->ioport[EXP_BASE]);


 outb((sc_adapter[card]->interrupt | 0x80),
  sc_adapter[card]->ioport[IRQ_SELECT]);
}
