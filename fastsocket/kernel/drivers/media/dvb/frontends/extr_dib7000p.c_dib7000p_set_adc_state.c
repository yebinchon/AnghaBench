
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int disable_sample_and_hold; int enable_current_mirror; } ;
struct dib7000p_state {TYPE_1__ cfg; } ;
typedef enum dibx000_adc_states { ____Placeholder_dibx000_adc_states } dibx000_adc_states ;
 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;

__attribute__((used)) static void dib7000p_set_adc_state(struct dib7000p_state *state, enum dibx000_adc_states no)
{
 u16 reg_908 = dib7000p_read_word(state, 908),
        reg_909 = dib7000p_read_word(state, 909);

 switch (no) {
  case 130:
   reg_909 |= (1 << 1) | (1 << 0);
   dib7000p_write_word(state, 909, reg_909);
   reg_909 &= ~(1 << 1);
   break;

  case 131:
   reg_909 |= (1 << 1) | (1 << 0);
   break;

  case 132:
   reg_908 &= 0x0fff;
   reg_909 &= 0x0003;
   break;

  case 133:
   reg_908 |= (1 << 14) | (1 << 13) | (1 << 12);
   reg_909 |= (1 << 5) | (1 << 4) | (1 << 3) | (1 << 2);
   break;

  case 128:
   reg_908 &= ~(1 << 15);
   break;

  case 129:
   reg_908 |= (1 << 15);
   break;

  default:
   break;
 }



 reg_909 |= (state->cfg.disable_sample_and_hold & 1) << 4;
 reg_908 |= (state->cfg.enable_current_mirror & 1) << 7;

 dib7000p_write_word(state, 908, reg_908);
 dib7000p_write_word(state, 909, reg_909);
}
