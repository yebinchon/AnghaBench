
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ output_mpeg2_in_188_bytes; int hostbus_diversity; } ;
struct dib8000_state {TYPE_1__ cfg; int fe; } ;


 int EINVAL ;







 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_set_acquisition_mode (struct dib8000_state*) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dprintk (char*,int *,...) ;

__attribute__((used)) static int dib8000_set_output_mode(struct dib8000_state *state, int mode)
{
 u16 outreg, fifo_threshold, smo_mode, sram = 0x0205;

 outreg = 0;
 fifo_threshold = 1792;
 smo_mode = (dib8000_read_word(state, 299) & 0x0050) | (1 << 1);

 dprintk("-I-  Setting output mode for demod %p to %d", &state->fe, mode);

 switch (mode) {
 case 129:
  outreg = (1 << 10);
  break;
 case 130:
  outreg = (1 << 10) | (1 << 6);
  break;
 case 128:
  outreg = (1 << 10) | (2 << 6) | (0 << 1);
  break;
 case 133:
  if (state->cfg.hostbus_diversity) {
   outreg = (1 << 10) | (4 << 6);
   sram &= 0xfdff;
  } else
   sram |= 0x0c00;
  break;
 case 131:
  smo_mode |= (3 << 1);
  fifo_threshold = 512;
  outreg = (1 << 10) | (5 << 6);
  break;
 case 132:
  outreg = 0;
  break;

 case 134:
  outreg = (1 << 10) | (3 << 6);
  dib8000_set_acquisition_mode(state);
  break;

 default:
  dprintk("Unhandled output_mode passed to be set for demod %p", &state->fe);
  return -EINVAL;
 }

 if (state->cfg.output_mpeg2_in_188_bytes)
  smo_mode |= (1 << 5);

 dib8000_write_word(state, 299, smo_mode);
 dib8000_write_word(state, 300, fifo_threshold);
 dib8000_write_word(state, 1286, outreg);
 dib8000_write_word(state, 1291, sram);

 return 0;
}
