
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dvbt_get_status_msg {int uncorrected_block_count; } ;
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct cinergyt2_fe_state {int d; } ;
typedef int status ;
typedef int cmd ;


 int CINERGYT2_EP1_GET_TUNER_STATUS ;
 int dvb_usb_generic_rw (int ,int *,int,int *,int,int ) ;
 int err (char*,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int cinergyt2_fe_read_unc_blocks(struct dvb_frontend *fe, u32 *unc)
{
 struct cinergyt2_fe_state *state = fe->demodulator_priv;
 struct dvbt_get_status_msg status;
 u8 cmd[] = { CINERGYT2_EP1_GET_TUNER_STATUS };
 int ret;

 ret = dvb_usb_generic_rw(state->d, cmd, sizeof(cmd), (u8 *)&status,
    sizeof(status), 0);
 if (ret < 0) {
  err("cinergyt2_fe_read_unc_blocks() Failed! (Error=%d)\n",
   ret);
  return ret;
 }
 *unc = le32_to_cpu(status.uncorrected_block_count);
 return 0;
}
