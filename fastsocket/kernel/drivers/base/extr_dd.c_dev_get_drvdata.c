
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* p; } ;
struct TYPE_2__ {void* driver_data; } ;



void *dev_get_drvdata(const struct device *dev)
{
 if (dev && dev->p)
  return dev->p->driver_data;
 return ((void*)0);
}
