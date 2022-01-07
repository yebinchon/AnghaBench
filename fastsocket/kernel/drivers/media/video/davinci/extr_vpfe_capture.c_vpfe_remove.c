
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_device {int ccdc_addr; int video_dev; int v4l2_dev; struct vpfe_device* sd; int ccdc_irq0; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_2__ {int driver; } ;
struct platform_device {TYPE_1__ dev; } ;


 int IORESOURCE_MEM ;
 struct vpfe_device* ccdc_cfg ;
 int ccdc_lock ;
 int free_irq (int ,struct vpfe_device*) ;
 int iounmap (int ) ;
 int kfree (struct vpfe_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vpfe_device* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_info (int ,char*) ;
 int video_unregister_device (int ) ;
 int vpfe_disable_clock (struct vpfe_device*) ;

__attribute__((used)) static int vpfe_remove(struct platform_device *pdev)
{
 struct vpfe_device *vpfe_dev = platform_get_drvdata(pdev);
 struct resource *res;

 v4l2_info(pdev->dev.driver, "vpfe_remove\n");

 free_irq(vpfe_dev->ccdc_irq0, vpfe_dev);
 kfree(vpfe_dev->sd);
 v4l2_device_unregister(&vpfe_dev->v4l2_dev);
 video_unregister_device(vpfe_dev->video_dev);
 mutex_lock(&ccdc_lock);
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, res->end - res->start + 1);
 iounmap(ccdc_cfg->ccdc_addr);
 mutex_unlock(&ccdc_lock);
 vpfe_disable_clock(vpfe_dev);
 kfree(vpfe_dev);
 kfree(ccdc_cfg);
 return 0;
}
