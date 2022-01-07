
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dev; } ;


 int device_del (int *) ;
 int put_device (int *) ;
 scalar_t__ sdio_func_present (struct sdio_func*) ;

void sdio_remove_func(struct sdio_func *func)
{
 if (sdio_func_present(func))
  device_del(&func->dev);

 put_device(&func->dev);
}
