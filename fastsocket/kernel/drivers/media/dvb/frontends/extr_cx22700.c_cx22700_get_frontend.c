
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ofdm; } ;
struct dvb_frontend_parameters {TYPE_1__ u; int inversion; } ;
struct dvb_frontend {struct cx22700_state* demodulator_priv; } ;
struct cx22700_state {int dummy; } ;


 int INVERSION_OFF ;
 int INVERSION_ON ;
 int cx22700_get_tps (struct cx22700_state*,int *) ;
 int cx22700_readreg (struct cx22700_state*,int) ;

__attribute__((used)) static int cx22700_get_frontend(struct dvb_frontend* fe, struct dvb_frontend_parameters *p)
{
 struct cx22700_state* state = fe->demodulator_priv;
 u8 reg09 = cx22700_readreg (state, 0x09);

 p->inversion = reg09 & 0x1 ? INVERSION_ON : INVERSION_OFF;
 return cx22700_get_tps (state, &p->u.ofdm);
}
