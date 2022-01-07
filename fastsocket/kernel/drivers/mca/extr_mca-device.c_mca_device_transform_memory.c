
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct mca_device {TYPE_1__ dev; } ;
struct TYPE_4__ {void* (* mca_transform_memory ) (struct mca_device*,void*) ;} ;
struct mca_bus {TYPE_2__ f; } ;


 void* stub1 (struct mca_device*,void*) ;
 struct mca_bus* to_mca_bus (int ) ;

void *mca_device_transform_memory(struct mca_device *mca_dev, void *mem)
{
 struct mca_bus *mca_bus = to_mca_bus(mca_dev->dev.parent);

 return mca_bus->f.mca_transform_memory(mca_dev, mem);
}
