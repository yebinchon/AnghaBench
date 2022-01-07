
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ENOMEM ;
 int IXP4XX_EXP_BUS_BASE (int) ;
 int fsg_ring_led ;
 int fsg_sata_led ;
 int fsg_sync_led ;
 int fsg_usb_led ;
 int fsg_wan_led ;
 int fsg_wlan_led ;
 scalar_t__ ioremap (int ,int) ;
 int iounmap (int*) ;
 int* latch_address ;
 int latch_value ;
 int led_classdev_register (int *,int *) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static int fsg_led_probe(struct platform_device *pdev)
{
 int ret;


 latch_address = (unsigned short *) ioremap(IXP4XX_EXP_BUS_BASE(2), 512);
 if (!latch_address) {
  ret = -ENOMEM;
  goto failremap;
 }

 latch_value = 0xffff;
 *latch_address = latch_value;

 ret = led_classdev_register(&pdev->dev, &fsg_wlan_led);
 if (ret < 0)
  goto failwlan;

 ret = led_classdev_register(&pdev->dev, &fsg_wan_led);
 if (ret < 0)
  goto failwan;

 ret = led_classdev_register(&pdev->dev, &fsg_sata_led);
 if (ret < 0)
  goto failsata;

 ret = led_classdev_register(&pdev->dev, &fsg_usb_led);
 if (ret < 0)
  goto failusb;

 ret = led_classdev_register(&pdev->dev, &fsg_sync_led);
 if (ret < 0)
  goto failsync;

 ret = led_classdev_register(&pdev->dev, &fsg_ring_led);
 if (ret < 0)
  goto failring;

 return ret;

 failring:
 led_classdev_unregister(&fsg_sync_led);
 failsync:
 led_classdev_unregister(&fsg_usb_led);
 failusb:
 led_classdev_unregister(&fsg_sata_led);
 failsata:
 led_classdev_unregister(&fsg_wan_led);
 failwan:
 led_classdev_unregister(&fsg_wlan_led);
 failwlan:
 iounmap(latch_address);
 failremap:

 return ret;
}
