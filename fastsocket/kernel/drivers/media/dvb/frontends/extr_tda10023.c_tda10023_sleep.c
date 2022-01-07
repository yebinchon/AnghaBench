
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda10023_state {int dummy; } ;
struct dvb_frontend {struct tda10023_state* demodulator_priv; } ;


 int tda10023_writereg (struct tda10023_state*,int,int) ;

__attribute__((used)) static int tda10023_sleep(struct dvb_frontend* fe)
{
 struct tda10023_state* state = fe->demodulator_priv;

 tda10023_writereg (state, 0x1b, 0x02);
 tda10023_writereg (state, 0x00, 0x80);

 return 0;
}
