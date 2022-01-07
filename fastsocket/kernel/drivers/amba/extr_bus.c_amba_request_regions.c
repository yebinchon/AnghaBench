
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int start; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct amba_device {TYPE_3__ res; TYPE_2__ dev; } ;
struct TYPE_4__ {char* name; } ;


 int EBUSY ;
 int request_mem_region (int ,int ,char const*) ;
 int resource_size (TYPE_3__*) ;

int amba_request_regions(struct amba_device *dev, const char *name)
{
 int ret = 0;
 u32 size;

 if (!name)
  name = dev->dev.driver->name;

 size = resource_size(&dev->res);

 if (!request_mem_region(dev->res.start, size, name))
  ret = -EBUSY;

 return ret;
}
