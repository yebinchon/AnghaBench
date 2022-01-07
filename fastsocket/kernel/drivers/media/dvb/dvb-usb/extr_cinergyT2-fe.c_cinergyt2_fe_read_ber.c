
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvbt_get_status_msg {int viterbi_error_rate; } ;
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct cinergyt2_fe_state {int d; } ;
typedef int status ;
typedef int cmd ;


 char CINERGYT2_EP1_GET_TUNER_STATUS ;
 int dvb_usb_generic_rw (int ,char*,int,char*,int,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int cinergyt2_fe_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct cinergyt2_fe_state *state = fe->demodulator_priv;
 struct dvbt_get_status_msg status;
 char cmd[] = { CINERGYT2_EP1_GET_TUNER_STATUS };
 int ret;

 ret = dvb_usb_generic_rw(state->d, cmd, sizeof(cmd), (char *)&status,
    sizeof(status), 0);
 if (ret < 0)
  return ret;

 *ber = le32_to_cpu(status.viterbi_error_rate);
 return 0;
}
