
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct loopback_dev* priv; } ;
struct loopback_dev {int txduty; } ;


 int EINVAL ;
 int dprintk (char*,int) ;

__attribute__((used)) static int loop_set_tx_duty_cycle(struct rc_dev *dev, u32 duty_cycle)
{
 struct loopback_dev *lodev = dev->priv;

 if (duty_cycle < 1 || duty_cycle > 99) {
  dprintk("invalid duty cycle: %u\n", duty_cycle);
  return -EINVAL;
 }

 dprintk("setting duty cycle: %u\n", duty_cycle);
 lodev->txduty = duty_cycle;
 return 0;
}
