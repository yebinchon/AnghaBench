
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_device_id {int id; } ;
struct dio_dev {int id; } ;


 scalar_t__ DIO_NEEDSSECID (int) ;
 int DIO_WILDCARD ;

const struct dio_device_id *
dio_match_device(const struct dio_device_id *ids,
     const struct dio_dev *d)
{
 while (ids->id) {
  if (ids->id == DIO_WILDCARD)
   return ids;
  if (DIO_NEEDSSECID(ids->id & 0xff)) {
   if (ids->id == d->id)
    return ids;
  } else {
   if ((ids->id & 0xff) == (d->id & 0xff))
    return ids;
  }
  ids++;
 }
 return ((void*)0);
}
