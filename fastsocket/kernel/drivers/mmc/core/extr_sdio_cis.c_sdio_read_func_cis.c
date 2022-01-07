
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdio_func {scalar_t__ vendor; TYPE_2__* card; int device; } ;
struct TYPE_3__ {scalar_t__ vendor; int device; } ;
struct TYPE_4__ {TYPE_1__ cis; int dev; } ;


 int get_device (int *) ;
 int sdio_read_cis (TYPE_2__*,struct sdio_func*) ;

int sdio_read_func_cis(struct sdio_func *func)
{
 int ret;

 ret = sdio_read_cis(func->card, func);
 if (ret)
  return ret;





 get_device(&func->card->dev);





 if (func->vendor == 0) {
  func->vendor = func->card->cis.vendor;
  func->device = func->card->cis.device;
 }

 return 0;
}
