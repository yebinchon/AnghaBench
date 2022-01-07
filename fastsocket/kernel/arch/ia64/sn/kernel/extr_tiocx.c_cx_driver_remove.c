
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cx_drv {int (* remove ) (struct cx_dev*) ;} ;
struct cx_dev {struct cx_drv* driver; } ;


 int stub1 (struct cx_dev*) ;
 struct cx_dev* to_cx_dev (struct device*) ;

__attribute__((used)) static int cx_driver_remove(struct device *dev)
{
 struct cx_dev *cx_dev = to_cx_dev(dev);
 struct cx_drv *cx_drv = cx_dev->driver;
 if (cx_drv->remove)
  cx_drv->remove(cx_dev);
 cx_dev->driver = ((void*)0);
 return 0;
}
