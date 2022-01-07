
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l64781_state {int dummy; } ;
struct dvb_frontend {struct l64781_state* demodulator_priv; } ;


 int l64781_writereg (struct l64781_state*,int,int) ;

__attribute__((used)) static int l64781_sleep(struct dvb_frontend* fe)
{
 struct l64781_state* state = fe->demodulator_priv;


 return l64781_writereg (state, 0x3e, 0x5a);
}
