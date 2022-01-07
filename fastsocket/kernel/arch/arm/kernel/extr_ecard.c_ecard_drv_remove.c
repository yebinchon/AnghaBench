
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expansion_card {int * irq_data; int * ops; scalar_t__ claimed; } ;
struct ecard_driver {int (* remove ) (struct expansion_card*) ;} ;
struct device {int driver; } ;


 struct expansion_card* ECARD_DEV (struct device*) ;
 struct ecard_driver* ECARD_DRV (int ) ;
 int barrier () ;
 int ecard_default_ops ;
 int stub1 (struct expansion_card*) ;

__attribute__((used)) static int ecard_drv_remove(struct device *dev)
{
 struct expansion_card *ec = ECARD_DEV(dev);
 struct ecard_driver *drv = ECARD_DRV(dev->driver);

 drv->remove(ec);
 ec->claimed = 0;





 ec->ops = &ecard_default_ops;
 barrier();
 ec->irq_data = ((void*)0);

 return 0;
}
