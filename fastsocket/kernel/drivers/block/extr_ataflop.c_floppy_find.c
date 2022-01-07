
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
typedef int dev_t ;
struct TYPE_2__ {int disk; } ;


 int FD_MAX_UNITS ;
 int NUM_DISK_MINORS ;
 struct kobject* get_disk (int ) ;
 TYPE_1__* unit ;

__attribute__((used)) static struct kobject *floppy_find(dev_t dev, int *part, void *data)
{
 int drive = *part & 3;
 int type = *part >> 2;
 if (drive >= FD_MAX_UNITS || type > NUM_DISK_MINORS)
  return ((void*)0);
 *part = 0;
 return get_disk(unit[drive].disk);
}
