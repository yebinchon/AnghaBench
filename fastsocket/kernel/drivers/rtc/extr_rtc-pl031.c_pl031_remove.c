
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl031_local {int base; int rtc; } ;
struct amba_device {int * irq; int dev; } ;


 int amba_release_regions (struct amba_device*) ;
 int amba_set_drvdata (struct amba_device*,int *) ;
 struct pl031_local* dev_get_drvdata (int *) ;
 int free_irq (int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct pl031_local*) ;
 int rtc_device_unregister (int ) ;

__attribute__((used)) static int pl031_remove(struct amba_device *adev)
{
 struct pl031_local *ldata = dev_get_drvdata(&adev->dev);

 amba_set_drvdata(adev, ((void*)0));
 free_irq(adev->irq[0], ldata->rtc);
 rtc_device_unregister(ldata->rtc);
 iounmap(ldata->base);
 kfree(ldata);
 amba_release_regions(adev);

 return 0;
}
