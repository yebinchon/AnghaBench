
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct s5h1420_state {int dummy; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;


 int s5h1420_readreg (struct s5h1420_state*,int) ;

__attribute__((used)) static int s5h1420_read_signal_strength(struct dvb_frontend* fe, u16* strength)
{
 struct s5h1420_state* state = fe->demodulator_priv;

 u8 val = s5h1420_readreg(state, 0x15);

 *strength = (u16) ((val << 8) | val);

 return 0;
}
