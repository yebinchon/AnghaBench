
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda10021_state {int dummy; } ;
struct dvb_frontend {struct tda10021_state* demodulator_priv; } ;


 int _tda10021_writereg (struct tda10021_state*,int,int) ;

__attribute__((used)) static int tda10021_sleep(struct dvb_frontend* fe)
{
 struct tda10021_state* state = fe->demodulator_priv;

 _tda10021_writereg (state, 0x1b, 0x02);
 _tda10021_writereg (state, 0x00, 0x80);

 return 0;
}
