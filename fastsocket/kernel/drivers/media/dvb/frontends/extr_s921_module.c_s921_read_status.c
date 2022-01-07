
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s921_state {int dev; } ;
struct dvb_frontend {scalar_t__ demodulator_priv; } ;
typedef int fe_status_t ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int ISDB_T_CMD_GET_STATUS ;
 int mdelay (int) ;
 int printk (char*,unsigned int) ;
 int s921_isdb_cmd (int *,int ,unsigned int*) ;

__attribute__((used)) static int s921_read_status(struct dvb_frontend *fe, fe_status_t *status)
{
 struct s921_state *state = (struct s921_state *)fe->demodulator_priv;
 unsigned int ret;
 mdelay(5);
 s921_isdb_cmd(&state->dev, ISDB_T_CMD_GET_STATUS, &ret);
 *status = 0;

 printk("status: %02x\n", ret);
 if (ret == 1) {
  *status |= FE_HAS_CARRIER;
  *status |= FE_HAS_VITERBI;
  *status |= FE_HAS_LOCK;
  *status |= FE_HAS_SYNC;
  *status |= FE_HAS_SIGNAL;
 }

 return 0;
}
