
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ves1820_state {int dummy; } ;
struct dvb_frontend {struct ves1820_state* demodulator_priv; } ;


 int ves1820_writereg (struct ves1820_state*,int,int) ;

__attribute__((used)) static int ves1820_sleep(struct dvb_frontend* fe)
{
 struct ves1820_state* state = fe->demodulator_priv;

 ves1820_writereg(state, 0x1b, 0x02);
 ves1820_writereg(state, 0x00, 0x80);

 return 0;
}
