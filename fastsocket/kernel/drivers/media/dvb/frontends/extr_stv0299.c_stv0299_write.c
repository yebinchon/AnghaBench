
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv0299_state {int dummy; } ;
struct dvb_frontend {struct stv0299_state* demodulator_priv; } ;


 int EINVAL ;
 int stv0299_writeregI (struct stv0299_state*,int ,int ) ;

__attribute__((used)) static int stv0299_write(struct dvb_frontend* fe, u8 *buf, int len)
{
 struct stv0299_state* state = fe->demodulator_priv;

 if (len != 2)
  return -EINVAL;

 return stv0299_writeregI(state, buf[0], buf[1]);
}
