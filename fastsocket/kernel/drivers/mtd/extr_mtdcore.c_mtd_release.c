
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
typedef scalar_t__ dev_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ MTD_DEVT (int ) ;
 TYPE_1__* dev_to_mtd (struct device*) ;
 int device_destroy (int *,scalar_t__) ;
 int mtd_class ;

__attribute__((used)) static void mtd_release(struct device *dev)
{
 dev_t index = MTD_DEVT(dev_to_mtd(dev)->index);


 if (index)
  device_destroy(&mtd_class, index + 1);
}
