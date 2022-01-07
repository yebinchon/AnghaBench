
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dib0090_state {int reset; int wbd_offset; } ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;




 int EN_UHF ;
 int dib0090_read_reg (struct dib0090_state*,int) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;
 int dprintk (char*,int ) ;

__attribute__((used)) static int dib0090_wbd_calibration(struct dib0090_state *state, enum frontend_tune_state *tune_state)
{
 switch (*tune_state) {
 case 129:

  dib0090_write_reg(state, 0x10, 0xdb09 | (1 << 10));
  dib0090_write_reg(state, 0x24, EN_UHF & 0x0fff);

  *tune_state = 128;
  return 90;
 case 128:
  state->wbd_offset = dib0090_read_reg(state, 0x1d);
  dprintk("WBD calibration offset = %d", state->wbd_offset);

  *tune_state = 129;
  state->reset &= ~0x2;
  break;
 default:
  break;
 }
 return 0;
}
