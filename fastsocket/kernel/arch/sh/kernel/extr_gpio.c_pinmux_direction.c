
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinmux_info {TYPE_1__* gpios; } ;
struct TYPE_2__ {int flags; } ;


 int BUG () ;
 int EINVAL ;
 int GPIO_CFG_DRYRUN ;
 int GPIO_CFG_FREE ;
 int GPIO_CFG_REQ ;
 int PINMUX_FLAG_TYPE ;





 scalar_t__ pinmux_config_gpio (struct pinmux_info*,unsigned int,int,int ) ;

__attribute__((used)) static int pinmux_direction(struct pinmux_info *gpioc,
       unsigned gpio, int new_pinmux_type)
{
 int pinmux_type;
 int ret = -EINVAL;

 if (!gpioc)
  goto err_out;

 pinmux_type = gpioc->gpios[gpio].flags & PINMUX_FLAG_TYPE;

 switch (pinmux_type) {
 case 132:
  break;
 case 128:
 case 131:
 case 129:
 case 130:
  pinmux_config_gpio(gpioc, gpio, pinmux_type, GPIO_CFG_FREE);
  break;
 default:
  goto err_out;
 }

 if (pinmux_config_gpio(gpioc, gpio,
          new_pinmux_type,
          GPIO_CFG_DRYRUN) != 0)
  goto err_out;

 if (pinmux_config_gpio(gpioc, gpio,
          new_pinmux_type,
          GPIO_CFG_REQ) != 0)
  BUG();

 gpioc->gpios[gpio].flags &= ~PINMUX_FLAG_TYPE;
 gpioc->gpios[gpio].flags |= new_pinmux_type;

 ret = 0;
 err_out:
 return ret;
}
