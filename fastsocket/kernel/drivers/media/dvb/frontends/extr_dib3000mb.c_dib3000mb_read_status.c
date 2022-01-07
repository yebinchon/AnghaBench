
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;
typedef int fe_status_t ;


 int DIB3000MB_REG_AGC_LOCK ;
 int DIB3000MB_REG_CARRIER_LOCK ;
 int DIB3000MB_REG_TPS_CELL_ID ;
 int DIB3000MB_REG_TPS_CODE_RATE_HP ;
 int DIB3000MB_REG_TPS_CODE_RATE_LP ;
 int DIB3000MB_REG_TPS_FFT ;
 int DIB3000MB_REG_TPS_GUARD_TIME ;
 int DIB3000MB_REG_TPS_HRCH ;
 int DIB3000MB_REG_TPS_LOCK ;
 int DIB3000MB_REG_TPS_QAM ;
 int DIB3000MB_REG_TPS_VIT_ALPHA ;
 int DIB3000MB_REG_TS_SYNC_LOCK ;
 int DIB3000MB_REG_VIT_LCK ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int deb_getf (char*,int,...) ;
 int rd (int ) ;

__attribute__((used)) static int dib3000mb_read_status(struct dvb_frontend* fe, fe_status_t *stat)
{
 struct dib3000_state* state = fe->demodulator_priv;

 *stat = 0;

 if (rd(DIB3000MB_REG_AGC_LOCK))
  *stat |= FE_HAS_SIGNAL;
 if (rd(DIB3000MB_REG_CARRIER_LOCK))
  *stat |= FE_HAS_CARRIER;
 if (rd(DIB3000MB_REG_VIT_LCK))
  *stat |= FE_HAS_VITERBI;
 if (rd(DIB3000MB_REG_TS_SYNC_LOCK))
  *stat |= (FE_HAS_SYNC | FE_HAS_LOCK);

 deb_getf("actual status is %2x\n",*stat);

 deb_getf("autoval: tps: %d, qam: %d, hrch: %d, alpha: %d, hp: %d, lp: %d, guard: %d, fft: %d cell: %d\n",
   rd(DIB3000MB_REG_TPS_LOCK),
   rd(DIB3000MB_REG_TPS_QAM),
   rd(DIB3000MB_REG_TPS_HRCH),
   rd(DIB3000MB_REG_TPS_VIT_ALPHA),
   rd(DIB3000MB_REG_TPS_CODE_RATE_HP),
   rd(DIB3000MB_REG_TPS_CODE_RATE_LP),
   rd(DIB3000MB_REG_TPS_GUARD_TIME),
   rd(DIB3000MB_REG_TPS_FFT),
   rd(DIB3000MB_REG_TPS_CELL_ID));


 return 0;
}
