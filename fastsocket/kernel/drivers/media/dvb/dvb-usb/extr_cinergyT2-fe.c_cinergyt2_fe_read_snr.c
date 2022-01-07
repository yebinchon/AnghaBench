
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvbt_get_status_msg {int snr; } ;
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct cinergyt2_fe_state {int d; } ;
typedef int status ;
typedef int cmd ;


 char CINERGYT2_EP1_GET_TUNER_STATUS ;
 int dvb_usb_generic_rw (int ,char*,int,char*,int,int ) ;
 int err (char*,int) ;

__attribute__((used)) static int cinergyt2_fe_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct cinergyt2_fe_state *state = fe->demodulator_priv;
 struct dvbt_get_status_msg status;
 char cmd[] = { CINERGYT2_EP1_GET_TUNER_STATUS };
 int ret;

 ret = dvb_usb_generic_rw(state->d, cmd, sizeof(cmd), (char *)&status,
    sizeof(status), 0);
 if (ret < 0) {
  err("cinergyt2_fe_read_snr() Failed! (Error=%d)\n", ret);
  return ret;
 }
 *snr = (status.snr << 8) | status.snr;
 return 0;
}
