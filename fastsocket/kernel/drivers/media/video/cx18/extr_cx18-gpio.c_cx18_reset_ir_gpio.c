
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_device {int dummy; } ;
struct cx18 {int sd_resetctrl; TYPE_2__* card; } ;
struct TYPE_3__ {scalar_t__ ir_reset_mask; } ;
struct TYPE_4__ {TYPE_1__ gpio_i2c_slave_reset; } ;


 int CX18_DEBUG_INFO (char*) ;
 int CX18_GPIO_RESET_Z8F0811 ;
 int core ;
 int reset ;
 struct cx18* to_cx18 (struct v4l2_device*) ;
 int v4l2_subdev_call (int *,int ,int ,int ) ;

void cx18_reset_ir_gpio(void *data)
{
 struct cx18 *cx = to_cx18((struct v4l2_device *)data);

 if (cx->card->gpio_i2c_slave_reset.ir_reset_mask == 0)
  return;

 CX18_DEBUG_INFO("Resetting IR microcontroller\n");

 v4l2_subdev_call(&cx->sd_resetctrl,
    core, reset, CX18_GPIO_RESET_Z8F0811);
}
