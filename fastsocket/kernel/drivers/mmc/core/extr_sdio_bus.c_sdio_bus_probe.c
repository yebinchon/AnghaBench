
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct sdio_driver {int (* probe ) (struct sdio_func*,struct sdio_device_id const*) ;} ;
struct sdio_device_id {int dummy; } ;
struct device {int driver; } ;


 int ENODEV ;
 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int sdio_claim_host (struct sdio_func*) ;
 struct sdio_device_id* sdio_match_device (struct sdio_func*,struct sdio_driver*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_set_block_size (struct sdio_func*,int ) ;
 int stub1 (struct sdio_func*,struct sdio_device_id const*) ;
 struct sdio_driver* to_sdio_driver (int ) ;

__attribute__((used)) static int sdio_bus_probe(struct device *dev)
{
 struct sdio_driver *drv = to_sdio_driver(dev->driver);
 struct sdio_func *func = dev_to_sdio_func(dev);
 const struct sdio_device_id *id;
 int ret;

 id = sdio_match_device(func, drv);
 if (!id)
  return -ENODEV;



 sdio_claim_host(func);
 ret = sdio_set_block_size(func, 0);
 sdio_release_host(func);
 if (ret)
  return ret;

 return drv->probe(func, id);
}
