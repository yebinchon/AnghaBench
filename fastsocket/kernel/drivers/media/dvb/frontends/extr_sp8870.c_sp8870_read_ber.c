
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sp8870_state {int dummy; } ;
struct dvb_frontend {struct sp8870_state* demodulator_priv; } ;


 int EIO ;
 int sp8870_readreg (struct sp8870_state*,int) ;

__attribute__((used)) static int sp8870_read_ber (struct dvb_frontend* fe, u32 * ber)
{
 struct sp8870_state* state = fe->demodulator_priv;
 int ret;
 u32 tmp;

 *ber = 0;

 ret = sp8870_readreg(state, 0xC08);
 if (ret < 0)
  return -EIO;

 tmp = ret & 0x3F;

 ret = sp8870_readreg(state, 0xC07);
 if (ret < 0)
  return -EIO;

  tmp = ret << 6;

 if (tmp >= 0x3FFF0)
  tmp = ~0;

 *ber = tmp;

 return 0;
}
