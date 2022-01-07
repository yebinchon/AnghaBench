
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dev; int num; int card; } ;


 int dev_set_name (int *,char*,int ,int ) ;
 int device_add (int *) ;
 int mmc_card_id (int ) ;
 int sdio_func_set_present (struct sdio_func*) ;

int sdio_add_func(struct sdio_func *func)
{
 int ret;

 dev_set_name(&func->dev, "%s:%d", mmc_card_id(func->card), func->num);

 ret = device_add(&func->dev);
 if (ret == 0)
  sdio_func_set_present(func);

 return ret;
}
