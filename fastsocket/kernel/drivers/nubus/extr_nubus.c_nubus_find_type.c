
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_dev {unsigned short category; unsigned short type; struct nubus_dev* next; } ;


 struct nubus_dev* nubus_devices ;

struct nubus_dev*
nubus_find_type(unsigned short category,
  unsigned short type,
  const struct nubus_dev* from)
{
 struct nubus_dev* itor =
  from ? from->next : nubus_devices;

 while (itor) {
  if (itor->category == category
      && itor->type == type)
   return itor;
  itor = itor->next;
 }
 return ((void*)0);
}
