
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto4xx_core_device {struct crypto4xx_core_device* dev; int ce_base; int device; } ;


 int crypto4xx_destroy_gdr (struct crypto4xx_core_device*) ;
 int crypto4xx_destroy_pdr (struct crypto4xx_core_device*) ;
 int crypto4xx_destroy_sdr (struct crypto4xx_core_device*) ;
 int dev_set_drvdata (int ,int *) ;
 int iounmap (int ) ;
 int kfree (struct crypto4xx_core_device*) ;

__attribute__((used)) static void crypto4xx_stop_all(struct crypto4xx_core_device *core_dev)
{
 crypto4xx_destroy_pdr(core_dev->dev);
 crypto4xx_destroy_gdr(core_dev->dev);
 crypto4xx_destroy_sdr(core_dev->dev);
 dev_set_drvdata(core_dev->device, ((void*)0));
 iounmap(core_dev->dev->ce_base);
 kfree(core_dev->dev);
 kfree(core_dev);
}
