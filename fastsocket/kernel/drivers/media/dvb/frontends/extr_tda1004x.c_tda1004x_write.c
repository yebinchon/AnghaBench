
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda1004x_state {int dummy; } ;
struct dvb_frontend {struct tda1004x_state* demodulator_priv; } ;


 int EINVAL ;
 int tda1004x_write_byteI (struct tda1004x_state*,int ,int ) ;

__attribute__((used)) static int tda1004x_write(struct dvb_frontend* fe, u8 *buf, int len)
{
 struct tda1004x_state* state = fe->demodulator_priv;

 if (len != 2)
  return -EINVAL;

 return tda1004x_write_byteI(state, buf[0], buf[1]);
}
