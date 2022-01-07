
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driverId; } ;


 int ENODEV ;
 int cinst ;
 TYPE_1__** sc_adapter ;

int get_card_from_id(int driver)
{
 int i;

 for(i = 0 ; i < cinst ; i++) {
  if(sc_adapter[i]->driverId == driver)
   return i;
 }
 return -ENODEV;
}
