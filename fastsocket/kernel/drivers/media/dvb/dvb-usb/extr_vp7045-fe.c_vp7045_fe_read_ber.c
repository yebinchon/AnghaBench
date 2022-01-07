
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vp7045_fe_state {int d; } ;
struct dvb_frontend {struct vp7045_fe_state* demodulator_priv; } ;


 int vp7045_read_reg (int ,int) ;

__attribute__((used)) static int vp7045_fe_read_ber(struct dvb_frontend* fe, u32 *ber)
{
 struct vp7045_fe_state *state = fe->demodulator_priv;
 *ber = (vp7045_read_reg(state->d, 0x0D) << 16) |
        (vp7045_read_reg(state->d, 0x0E) << 8) |
  vp7045_read_reg(state->d, 0x0F);
 return 0;
}
