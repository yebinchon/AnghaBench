
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct mca_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int (* mca_transform_irq ) (struct mca_device*,int) ;} ;
struct mca_bus {TYPE_2__ f; } ;


 int stub1 (struct mca_device*,int) ;
 struct mca_bus* to_mca_bus (int ) ;

int mca_device_transform_irq(struct mca_device *mca_dev, int irq)
{
 struct mca_bus *mca_bus = to_mca_bus(mca_dev->dev.parent);

 return mca_bus->f.mca_transform_irq(mca_dev, irq);
}
