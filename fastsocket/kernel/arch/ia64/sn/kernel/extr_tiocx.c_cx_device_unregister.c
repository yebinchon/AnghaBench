
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx_dev {int dev; } ;


 int device_unregister (int *) ;
 int put_device (int *) ;

int cx_device_unregister(struct cx_dev *cx_dev)
{
 put_device(&cx_dev->dev);
 device_unregister(&cx_dev->dev);
 return 0;
}
