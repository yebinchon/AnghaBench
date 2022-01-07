
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* p; } ;
struct TYPE_2__ {void* driver_data; } ;


 int device_private_init (struct device*) ;

void dev_set_drvdata(struct device *dev, void *data)
{
 int error;

 if (!dev)
  return;
 if (!dev->p) {
  error = device_private_init(dev);
  if (error)
   return;
 }
 dev->p->driver_data = data;
}
