
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00_dev {int cap_flags; int flags; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int (* set_device_state ) (struct rt2x00_dev*,int ) ;} ;


 int CAPABILITY_VCO_RECALIBRATION ;
 int DEVICE_STATE_ENABLED_RADIO ;
 int STATE_RADIO_IRQ_ON ;
 int STATE_RADIO_ON ;
 int rt2x00led_led_activity (struct rt2x00_dev*,int) ;
 int rt2x00leds_led_radio (struct rt2x00_dev*,int) ;
 int rt2x00link_start_agc (struct rt2x00_dev*) ;
 int rt2x00link_start_tuner (struct rt2x00_dev*) ;
 int rt2x00link_start_vcocal (struct rt2x00_dev*) ;
 int rt2x00link_start_watchdog (struct rt2x00_dev*) ;
 int rt2x00queue_init_queues (struct rt2x00_dev*) ;
 int rt2x00queue_start_queues (struct rt2x00_dev*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct rt2x00_dev*,int ) ;
 int stub2 (struct rt2x00_dev*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

int rt2x00lib_enable_radio(struct rt2x00_dev *rt2x00dev)
{
 int status;





 if (test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  return 0;




 rt2x00queue_init_queues(rt2x00dev);




 status =
     rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_RADIO_ON);
 if (status)
  return status;

 rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_RADIO_IRQ_ON);

 rt2x00leds_led_radio(rt2x00dev, 1);
 rt2x00led_led_activity(rt2x00dev, 1);

 set_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags);




 rt2x00queue_start_queues(rt2x00dev);
 rt2x00link_start_tuner(rt2x00dev);
 rt2x00link_start_agc(rt2x00dev);
 if (test_bit(CAPABILITY_VCO_RECALIBRATION, &rt2x00dev->cap_flags))
  rt2x00link_start_vcocal(rt2x00dev);




 rt2x00link_start_watchdog(rt2x00dev);

 return 0;
}
