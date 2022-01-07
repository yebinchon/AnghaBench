
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_frontend {struct dtt200u_fe_state* demodulator_priv; } ;
struct dtt200u_fe_state {int d; } ;


 int GET_SNR ;
 int dvb_usb_generic_rw (int ,int*,int,int*,int,int ) ;

__attribute__((used)) static int dtt200u_fe_read_snr(struct dvb_frontend* fe, u16 *snr)
{
 struct dtt200u_fe_state *state = fe->demodulator_priv;
 u8 bw = GET_SNR,br;
 dvb_usb_generic_rw(state->d,&bw,1,&br,1,0);
 *snr = ~((br << 8) | br);
 return 0;
}
