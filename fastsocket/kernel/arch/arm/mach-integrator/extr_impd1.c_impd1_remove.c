
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; } ;
struct lm_device {TYPE_1__ resource; int dev; } ;
struct impd1_module {int base; int * clks; } ;


 int ARRAY_SIZE (int *) ;
 int SZ_4K ;
 int clkdev_drop (int ) ;
 int device_for_each_child (int *,int *,int ) ;
 int impd1_remove_one ;
 int iounmap (int ) ;
 int kfree (struct impd1_module*) ;
 struct impd1_module* lm_get_drvdata (struct lm_device*) ;
 int lm_set_drvdata (struct lm_device*,int *) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void impd1_remove(struct lm_device *dev)
{
 struct impd1_module *impd1 = lm_get_drvdata(dev);
 int i;

 device_for_each_child(&dev->dev, ((void*)0), impd1_remove_one);

 for (i = 0; i < ARRAY_SIZE(impd1->clks); i++)
  clkdev_drop(impd1->clks[i]);

 lm_set_drvdata(dev, ((void*)0));

 iounmap(impd1->base);
 kfree(impd1);
 release_mem_region(dev->resource.start, SZ_4K);
}
