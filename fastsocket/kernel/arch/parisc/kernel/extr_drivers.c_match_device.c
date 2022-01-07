
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parisc_driver {struct parisc_device_id* id_table; } ;
struct parisc_device_id {scalar_t__ sversion; scalar_t__ hw_type; scalar_t__ hversion; } ;
struct TYPE_2__ {scalar_t__ sversion; scalar_t__ hw_type; scalar_t__ hversion; } ;
struct parisc_device {TYPE_1__ id; } ;


 scalar_t__ HVERSION_ANY_ID ;
 scalar_t__ HWTYPE_ANY_ID ;
 scalar_t__ SVERSION_ANY_ID ;

__attribute__((used)) static int match_device(struct parisc_driver *driver, struct parisc_device *dev)
{
 const struct parisc_device_id *ids;

 for (ids = driver->id_table; ids->sversion; ids++) {
  if ((ids->sversion != SVERSION_ANY_ID) &&
      (ids->sversion != dev->id.sversion))
   continue;

  if ((ids->hw_type != HWTYPE_ANY_ID) &&
      (ids->hw_type != dev->id.hw_type))
   continue;

  if ((ids->hversion != HVERSION_ANY_ID) &&
      (ids->hversion != dev->id.hversion))
   continue;

  return 1;
 }
 return 0;
}
