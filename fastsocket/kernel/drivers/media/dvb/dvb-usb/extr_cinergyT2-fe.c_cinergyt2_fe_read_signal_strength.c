
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct dvbt_get_status_msg {int gain; } ;
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct cinergyt2_fe_state {int d; } ;
typedef int status ;
typedef int cmd ;


 char CINERGYT2_EP1_GET_TUNER_STATUS ;
 int dvb_usb_generic_rw (int ,char*,int,char*,int,int ) ;
 int err (char*,int) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int cinergyt2_fe_read_signal_strength(struct dvb_frontend *fe,
      u16 *strength)
{
 struct cinergyt2_fe_state *state = fe->demodulator_priv;
 struct dvbt_get_status_msg status;
 char cmd[] = { CINERGYT2_EP1_GET_TUNER_STATUS };
 int ret;

 ret = dvb_usb_generic_rw(state->d, cmd, sizeof(cmd), (char *)&status,
    sizeof(status), 0);
 if (ret < 0) {
  err("cinergyt2_fe_read_signal_strength() Failed!"
   " (Error=%d)\n", ret);
  return ret;
 }
 *strength = (0xffff - le16_to_cpu(status.gain));
 return 0;
}
