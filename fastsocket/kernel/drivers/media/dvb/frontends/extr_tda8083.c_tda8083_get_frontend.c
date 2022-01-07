
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tda8083_state {int dummy; } ;
struct TYPE_3__ {int fec_inner; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int inversion; } ;
struct dvb_frontend {struct tda8083_state* demodulator_priv; } ;


 int INVERSION_OFF ;
 int INVERSION_ON ;
 int tda8083_get_fec (struct tda8083_state*) ;
 int tda8083_readreg (struct tda8083_state*,int) ;

__attribute__((used)) static int tda8083_get_frontend(struct dvb_frontend* fe, struct dvb_frontend_parameters *p)
{
 struct tda8083_state* state = fe->demodulator_priv;



 p->inversion = (tda8083_readreg (state, 0x0e) & 0x80) ?
   INVERSION_ON : INVERSION_OFF;
 p->u.qpsk.fec_inner = tda8083_get_fec (state);


 return 0;
}
