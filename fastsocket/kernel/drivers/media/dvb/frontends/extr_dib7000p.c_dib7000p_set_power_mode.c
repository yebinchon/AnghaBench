
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib7000p_state {int dummy; } ;
typedef enum dib7000p_power_mode { ____Placeholder_dib7000p_power_mode } dib7000p_power_mode ;





 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;

__attribute__((used)) static int dib7000p_set_power_mode(struct dib7000p_state *state, enum dib7000p_power_mode mode)
{

 u16 reg_774 = 0xffff, reg_775 = 0xffff, reg_776 = 0x0007, reg_899 = 0x0003,
  reg_1280 = (0xfe00) | (dib7000p_read_word(state, 1280) & 0x01ff);


 switch (mode) {

  case 130:
   reg_774 = 0x0000; reg_775 = 0x0000; reg_776 = 0x0; reg_899 = 0x0; reg_1280 &= 0x01ff;
   break;

  case 129:

   reg_774 &= ~((1 << 15) | (1 << 14) | (1 << 11) | (1 << 10) | (1 << 9));

   reg_776 &= ~((1 << 0));

   reg_1280 &= ~((1 << 11));



  case 128:
   reg_1280 &= ~((1 << 14) | (1 << 13) | (1 << 12) | (1 << 10));
   break;


 }

 dib7000p_write_word(state, 774, reg_774);
 dib7000p_write_word(state, 775, reg_775);
 dib7000p_write_word(state, 776, reg_776);
 dib7000p_write_word(state, 899, reg_899);
 dib7000p_write_word(state, 1280, reg_1280);

 return 0;
}
