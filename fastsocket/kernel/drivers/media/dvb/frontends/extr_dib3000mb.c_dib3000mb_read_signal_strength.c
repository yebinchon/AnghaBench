
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;


 int DIB3000MB_REG_SIGNAL_POWER ;
 int rd (int ) ;

__attribute__((used)) static int dib3000mb_read_signal_strength(struct dvb_frontend* fe, u16 *strength)
{
 struct dib3000_state* state = fe->demodulator_priv;

 *strength = rd(DIB3000MB_REG_SIGNAL_POWER) * 0xffff / 0x170;
 return 0;
}
