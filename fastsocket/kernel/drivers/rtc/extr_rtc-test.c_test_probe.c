
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int THIS_MODULE ;
 int dev_attr_irq ;
 int device_create_file (int *,int *) ;
 int platform_set_drvdata (struct platform_device*,struct rtc_device*) ;
 struct rtc_device* rtc_device_register (char*,int *,int *,int ) ;
 int rtc_device_unregister (struct rtc_device*) ;
 int test_rtc_ops ;

__attribute__((used)) static int test_probe(struct platform_device *plat_dev)
{
 int err;
 struct rtc_device *rtc = rtc_device_register("test", &plat_dev->dev,
      &test_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc)) {
  err = PTR_ERR(rtc);
  return err;
 }

 err = device_create_file(&plat_dev->dev, &dev_attr_irq);
 if (err)
  goto err;

 platform_set_drvdata(plat_dev, rtc);

 return 0;

err:
 rtc_device_unregister(rtc);
 return err;
}
