
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASUS_LED_UNREGISTER (int ) ;
 int destroy_workqueue (int ) ;
 int gled ;
 int kled ;
 int led_workqueue ;
 int mled ;
 int pled ;
 int rled ;
 int tled ;

__attribute__((used)) static void asus_led_exit(void)
{
 destroy_workqueue(led_workqueue);
 ASUS_LED_UNREGISTER(mled);
 ASUS_LED_UNREGISTER(tled);
 ASUS_LED_UNREGISTER(pled);
 ASUS_LED_UNREGISTER(rled);
 ASUS_LED_UNREGISTER(gled);
 ASUS_LED_UNREGISTER(kled);
}
