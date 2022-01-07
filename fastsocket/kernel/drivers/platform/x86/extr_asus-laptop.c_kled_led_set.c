
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int kled_led_wk ;
 int kled_led_work ;
 int led_workqueue ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void kled_led_set(struct led_classdev *led_cdev,
    enum led_brightness value)
{
 kled_led_wk = value;
 queue_work(led_workqueue, &kled_led_work);
}
