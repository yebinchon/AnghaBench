
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {TYPE_1__* hba_bus; } ;
struct lba_device {TYPE_2__ hba; } ;
struct TYPE_3__ {scalar_t__ secondary; scalar_t__ subordinate; } ;


 scalar_t__ LBA_MAX_NUM_BUSES ;

__attribute__((used)) static int lba_device_present(u8 bus, u8 dfn, struct lba_device *d)
{
 u8 first_bus = d->hba.hba_bus->secondary;
 u8 last_sub_bus = d->hba.hba_bus->subordinate;

 if ((bus < first_bus) ||
     (bus > last_sub_bus) ||
     ((bus - first_bus) >= LBA_MAX_NUM_BUSES)) {
  return 0;
 }

 return 1;
}
