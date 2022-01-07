
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intena; } ;


 int IF_EXTER ;
 int IF_PORTS ;


 TYPE_1__ amiga_custom ;

__attribute__((used)) static void auto_disable_irq(unsigned int irq)
{
 switch (irq) {
 case 129:
  amiga_custom.intena = IF_PORTS;
  break;
 case 128:
  amiga_custom.intena = IF_EXTER;
  break;
 }
}
