
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_driver {int (* probe ) (int *) ;} ;
struct device {int driver; } ;
typedef int ide_drive_t ;


 int ENODEV ;
 int stub1 (int *) ;
 int * to_ide_device (struct device*) ;
 struct ide_driver* to_ide_driver (int ) ;

__attribute__((used)) static int generic_ide_probe(struct device *dev)
{
 ide_drive_t *drive = to_ide_device(dev);
 struct ide_driver *drv = to_ide_driver(dev->driver);

 return drv->probe ? drv->probe(drive) : -ENODEV;
}
