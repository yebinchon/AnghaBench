
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev_ops {int dummy; } ;
struct v4l2_subdev {int grp_id; int name; } ;
struct TYPE_2__ {char* name; } ;
struct cx18 {TYPE_1__ v4l2_dev; struct v4l2_subdev sd_resetctrl; struct v4l2_subdev sd_gpiomux; } ;




 int EINVAL ;
 struct v4l2_subdev_ops gpiomux_ops ;
 struct v4l2_subdev_ops resetctrl_ops ;
 int snprintf (int ,int,char*,char*,char*) ;
 int v4l2_device_register_subdev (TYPE_1__*,struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct cx18*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,struct v4l2_subdev_ops const*) ;

int cx18_gpio_register(struct cx18 *cx, u32 hw)
{
 struct v4l2_subdev *sd;
 const struct v4l2_subdev_ops *ops;
 char *str;

 switch (hw) {
 case 129:
  sd = &cx->sd_gpiomux;
  ops = &gpiomux_ops;
  str = "gpio-mux";
  break;
 case 128:
  sd = &cx->sd_resetctrl;
  ops = &resetctrl_ops;
  str = "gpio-reset-ctrl";
  break;
 default:
  return -EINVAL;
 }

 v4l2_subdev_init(sd, ops);
 v4l2_set_subdevdata(sd, cx);
 snprintf(sd->name, sizeof(sd->name), "%s %s", cx->v4l2_dev.name, str);
 sd->grp_id = hw;
 return v4l2_device_register_subdev(&cx->v4l2_dev, sd);
}
