
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nubus_dev {struct nubus_dev* next; TYPE_1__* board; } ;
struct TYPE_2__ {unsigned int slot; } ;


 struct nubus_dev* nubus_devices ;

struct nubus_dev*
nubus_find_slot(unsigned int slot,
  const struct nubus_dev* from)
{
 struct nubus_dev* itor =
  from ? from->next : nubus_devices;

 while (itor) {
  if (itor->board->slot == slot)
   return itor;
  itor = itor->next;
 }
 return ((void*)0);
}
