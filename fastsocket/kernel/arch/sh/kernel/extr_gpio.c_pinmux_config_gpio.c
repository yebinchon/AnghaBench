
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinmux_range {scalar_t__ force; } ;
struct pinmux_info {struct pinmux_range function; struct pinmux_range input_pd; struct pinmux_range input_pu; struct pinmux_range input; struct pinmux_range output; } ;
struct pinmux_cfg_reg {int dummy; } ;
typedef scalar_t__ pinmux_enum_t ;
 int check_config_reg (struct pinmux_info*,struct pinmux_cfg_reg*,int) ;
 int enum_in_range (scalar_t__,struct pinmux_range*) ;
 scalar_t__ get_config_reg (struct pinmux_info*,scalar_t__,struct pinmux_cfg_reg**,int*,unsigned long**) ;
 int get_gpio_enum_id (struct pinmux_info*,unsigned int,int,scalar_t__*) ;
 int write_config_reg (struct pinmux_info*,struct pinmux_cfg_reg*,int) ;

__attribute__((used)) static int pinmux_config_gpio(struct pinmux_info *gpioc, unsigned gpio,
         int pinmux_type, int cfg_mode)
{
 struct pinmux_cfg_reg *cr = ((void*)0);
 pinmux_enum_t enum_id;
 struct pinmux_range *range;
 int in_range, pos, index;
 unsigned long *cntp;

 switch (pinmux_type) {

 case 132:
  range = ((void*)0);
  break;

 case 128:
  range = &gpioc->output;
  break;

 case 131:
  range = &gpioc->input;
  break;

 case 129:
  range = &gpioc->input_pu;
  break;

 case 130:
  range = &gpioc->input_pd;
  break;

 default:
  goto out_err;
 }

 pos = 0;
 enum_id = 0;
 index = 0;
 while (1) {
  pos = get_gpio_enum_id(gpioc, gpio, pos, &enum_id);
  if (pos <= 0)
   goto out_err;

  if (!enum_id)
   break;

  in_range = enum_in_range(enum_id, &gpioc->function);
  if (!in_range && range) {
   in_range = enum_in_range(enum_id, range);

   if (in_range && enum_id == range->force)
    continue;
  }

  if (!in_range)
   continue;

  if (get_config_reg(gpioc, enum_id, &cr, &index, &cntp) != 0)
   goto out_err;

  switch (cfg_mode) {
  case 135:
   if (!*cntp || !check_config_reg(gpioc, cr, index))
    continue;
   break;

  case 133:
   write_config_reg(gpioc, cr, index);
   *cntp = *cntp + 1;
   break;

  case 134:
   *cntp = *cntp - 1;
   break;
  }
 }

 return 0;
 out_err:
 return -1;
}
