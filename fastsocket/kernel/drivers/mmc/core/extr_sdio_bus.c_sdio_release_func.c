
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {struct sdio_func* info; } ;
struct device {int dummy; } ;


 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int kfree (struct sdio_func*) ;
 int sdio_free_func_cis (struct sdio_func*) ;

__attribute__((used)) static void sdio_release_func(struct device *dev)
{
 struct sdio_func *func = dev_to_sdio_func(dev);

 sdio_free_func_cis(func);

 if (func->info)
  kfree(func->info);

 kfree(func);
}
