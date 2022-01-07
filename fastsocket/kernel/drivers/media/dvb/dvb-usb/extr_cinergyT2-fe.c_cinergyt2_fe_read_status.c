
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvbt_get_status_msg {int lock_bits; int gain; } ;
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct cinergyt2_fe_state {int d; } ;
typedef int result ;
typedef int fe_status_t ;
typedef int cmd ;


 int CINERGYT2_EP1_GET_TUNER_STATUS ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int dvb_usb_generic_rw (int ,int *,int,int *,int,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int cinergyt2_fe_read_status(struct dvb_frontend *fe,
     fe_status_t *status)
{
 struct cinergyt2_fe_state *state = fe->demodulator_priv;
 struct dvbt_get_status_msg result;
 u8 cmd[] = { CINERGYT2_EP1_GET_TUNER_STATUS };
 int ret;

 ret = dvb_usb_generic_rw(state->d, cmd, sizeof(cmd), (u8 *)&result,
   sizeof(result), 0);
 if (ret < 0)
  return ret;

 *status = 0;

 if (0xffff - le16_to_cpu(result.gain) > 30)
  *status |= FE_HAS_SIGNAL;
 if (result.lock_bits & (1 << 6))
  *status |= FE_HAS_LOCK;
 if (result.lock_bits & (1 << 5))
  *status |= FE_HAS_SYNC;
 if (result.lock_bits & (1 << 4))
  *status |= FE_HAS_CARRIER;
 if (result.lock_bits & (1 << 1))
  *status |= FE_HAS_VITERBI;

 if ((*status & (FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC)) !=
   (FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC))
  *status &= ~FE_HAS_LOCK;

 return 0;
}
