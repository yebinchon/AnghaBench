
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl5007t_state {int tab_init; } ;
typedef enum mxl5007t_xtal_freq { ____Placeholder_mxl5007t_xtal_freq } mxl5007t_xtal_freq ;


 int EINVAL ;
 int mxl_fail (int ) ;
 int set_reg_bits (int ,int,int,int) ;

__attribute__((used)) static void mxl5007t_set_xtal_freq_bits(struct mxl5007t_state *state,
     enum mxl5007t_xtal_freq xtal_freq)
{
 switch (xtal_freq) {
 case 141:

  set_reg_bits(state->tab_init, 0x03, 0xf0, 0x00);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x00);
  break;
 case 138:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0x10);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x01);
  break;
 case 140:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0x20);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x02);
  break;
 case 139:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0x30);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x03);
  break;
 case 137:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0x40);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x04);
  break;
 case 135:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0x50);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x05);
  break;
 case 136:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0x60);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x06);
  break;
 case 134:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0x70);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x07);
  break;
 case 133:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0x80);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x08);
  break;
 case 132:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0x90);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x09);
  break;
 case 131:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0xa0);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x0a);
  break;
 case 130:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0xb0);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x0b);
  break;
 case 129:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0xc0);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x0c);
  break;
 case 128:
  set_reg_bits(state->tab_init, 0x03, 0xf0, 0xd0);
  set_reg_bits(state->tab_init, 0x05, 0x0f, 0x0d);
  break;
 default:
  mxl_fail(-EINVAL);
  return;
 }

 return;
}
