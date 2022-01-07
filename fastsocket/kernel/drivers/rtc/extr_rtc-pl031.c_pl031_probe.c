
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl031_local {int base; int rtc; } ;
struct amba_id {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct amba_device {int * irq; int dev; TYPE_1__ res; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_DISABLED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int amba_release_regions (struct amba_device*) ;
 int amba_request_regions (struct amba_device*,int *) ;
 int amba_set_drvdata (struct amba_device*,struct pl031_local*) ;
 int free_irq (int ,int ) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct pl031_local*) ;
 struct pl031_local* kmalloc (int,int ) ;
 int pl031_interrupt ;
 int pl031_ops ;
 scalar_t__ request_irq (int ,int ,int ,char*,int ) ;
 int resource_size (TYPE_1__*) ;
 int rtc_device_register (char*,int *,int *,int ) ;

__attribute__((used)) static int pl031_probe(struct amba_device *adev, struct amba_id *id)
{
 int ret;
 struct pl031_local *ldata;

 ret = amba_request_regions(adev, ((void*)0));
 if (ret)
  goto err_req;

 ldata = kmalloc(sizeof(struct pl031_local), GFP_KERNEL);
 if (!ldata) {
  ret = -ENOMEM;
  goto out;
 }

 ldata->base = ioremap(adev->res.start, resource_size(&adev->res));
 if (!ldata->base) {
  ret = -ENOMEM;
  goto out_no_remap;
 }

 amba_set_drvdata(adev, ldata);

 if (request_irq(adev->irq[0], pl031_interrupt, IRQF_DISABLED,
   "rtc-pl031", ldata->rtc)) {
  ret = -EIO;
  goto out_no_irq;
 }

 ldata->rtc = rtc_device_register("pl031", &adev->dev, &pl031_ops,
      THIS_MODULE);
 if (IS_ERR(ldata->rtc)) {
  ret = PTR_ERR(ldata->rtc);
  goto out_no_rtc;
 }

 return 0;

out_no_rtc:
 free_irq(adev->irq[0], ldata->rtc);
out_no_irq:
 iounmap(ldata->base);
 amba_set_drvdata(adev, ((void*)0));
out_no_remap:
 kfree(ldata);
out:
 amba_release_regions(adev);
err_req:
 return ret;
}
