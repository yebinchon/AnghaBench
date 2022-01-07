
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int fsg_ring_led ;
 int fsg_sata_led ;
 int fsg_sync_led ;
 int fsg_usb_led ;
 int fsg_wan_led ;
 int fsg_wlan_led ;
 int iounmap (int ) ;
 int latch_address ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static int fsg_led_remove(struct platform_device *pdev)
{
 led_classdev_unregister(&fsg_wlan_led);
 led_classdev_unregister(&fsg_wan_led);
 led_classdev_unregister(&fsg_sata_led);
 led_classdev_unregister(&fsg_usb_led);
 led_classdev_unregister(&fsg_sync_led);
 led_classdev_unregister(&fsg_ring_led);

 iounmap(latch_address);

 return 0;
}
