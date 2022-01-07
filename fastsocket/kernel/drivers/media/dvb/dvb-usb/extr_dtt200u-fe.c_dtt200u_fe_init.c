
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct dtt200u_fe_state* demodulator_priv; } ;
struct dtt200u_fe_state {int d; } ;


 int SET_INIT ;
 int dvb_usb_generic_write (int ,int *,int) ;

__attribute__((used)) static int dtt200u_fe_init(struct dvb_frontend* fe)
{
 struct dtt200u_fe_state *state = fe->demodulator_priv;
 u8 b = SET_INIT;
 return dvb_usb_generic_write(state->d,&b,1);
}
