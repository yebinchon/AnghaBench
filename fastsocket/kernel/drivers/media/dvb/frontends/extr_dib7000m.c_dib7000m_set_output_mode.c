
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ output_mpeg2_in_188_bytes; int hostbus_diversity; } ;
struct dib7000m_state {int reg_offs; int revision; TYPE_1__ cfg; int demod; } ;
 int dib7000m_read_word (struct dib7000m_state*,int) ;
 int dib7000m_write_word (struct dib7000m_state*,int,int) ;
 int dprintk (char*,int *,...) ;

__attribute__((used)) static int dib7000m_set_output_mode(struct dib7000m_state *state, int mode)
{
 int ret = 0;
 u16 outreg, fifo_threshold, smo_mode,
  sram = 0x0005;

 outreg = 0;
 fifo_threshold = 1792;
 smo_mode = (dib7000m_read_word(state, 294 + state->reg_offs) & 0x0010) | (1 << 1);

 dprintk( "setting output mode for demod %p to %d", &state->demod, mode);

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
   if (state->cfg.hostbus_diversity)
    outreg = (1 << 10) | (4 << 6);
   else
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
  default:
   dprintk( "Unhandled output_mode passed to be set for demod %p",&state->demod);
   break;
 }

 if (state->cfg.output_mpeg2_in_188_bytes)
  smo_mode |= (1 << 5) ;

 ret |= dib7000m_write_word(state, 294 + state->reg_offs, smo_mode);
 ret |= dib7000m_write_word(state, 295 + state->reg_offs, fifo_threshold);
 ret |= dib7000m_write_word(state, 1795, outreg);
 ret |= dib7000m_write_word(state, 1805, sram);

 if (state->revision == 0x4003) {
  u16 clk_cfg1 = dib7000m_read_word(state, 909) & 0xfffd;
  if (mode == 133)
   clk_cfg1 |= (1 << 1);
  dib7000m_write_word(state, 909, clk_cfg1);
 }
 return ret;
}
