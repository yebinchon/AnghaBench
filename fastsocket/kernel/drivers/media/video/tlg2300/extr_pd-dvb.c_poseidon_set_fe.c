
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pd_dvb_adapter {size_t bandwidth; int prev_freq; int last_jiffies; int fe_param; } ;
struct poseidon {int lock; struct pd_dvb_adapter dvb_data; } ;
struct TYPE_3__ {scalar_t__ bandwidth; } ;
struct TYPE_4__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {int frequency; TYPE_2__ u; } ;
struct dvb_frontend {struct poseidon* demodulator_priv; } ;
typedef size_t s32 ;


 int DVBT_BANDW_SEL ;
 int EBUSY ;
 int TAKE_REQUEST ;
 int TUNE_FREQ_SELECT ;
 scalar_t__ check_scan_ok (int,size_t,struct pd_dvb_adapter*) ;
 scalar_t__** dvb_bandwidth ;
 size_t dvb_bandwidth_length ;
 scalar_t__ in_hibernation (struct poseidon*) ;
 int jiffies ;
 int log (char*) ;
 int memcpy (int *,struct dvb_frontend_parameters*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t send_set_req (struct poseidon*,int ,size_t,size_t*) ;

__attribute__((used)) static int poseidon_set_fe(struct dvb_frontend *fe,
   struct dvb_frontend_parameters *fep)
{
 s32 ret = 0, cmd_status = 0;
 s32 i, bandwidth = -1;
 struct poseidon *pd = fe->demodulator_priv;
 struct pd_dvb_adapter *pd_dvb = &pd->dvb_data;

 if (in_hibernation(pd))
  return -EBUSY;

 mutex_lock(&pd->lock);
 for (i = 0; i < dvb_bandwidth_length; i++)
  if (fep->u.ofdm.bandwidth == dvb_bandwidth[i][1])
   bandwidth = dvb_bandwidth[i][0];

 if (check_scan_ok(fep->frequency, bandwidth, pd_dvb)) {
  ret = send_set_req(pd, TUNE_FREQ_SELECT,
     fep->frequency / 1000, &cmd_status);
  if (ret | cmd_status) {
   log("error line");
   goto front_out;
  }

  ret = send_set_req(pd, DVBT_BANDW_SEL,
      bandwidth, &cmd_status);
  if (ret | cmd_status) {
   log("error line");
   goto front_out;
  }

  ret = send_set_req(pd, TAKE_REQUEST, 0, &cmd_status);
  if (ret | cmd_status) {
   log("error line");
   goto front_out;
  }


  memcpy(&pd_dvb->fe_param, fep, sizeof(*fep));
  pd_dvb->bandwidth = bandwidth;
  pd_dvb->prev_freq = fep->frequency;
  pd_dvb->last_jiffies = jiffies;
 }
front_out:
 mutex_unlock(&pd->lock);
 return ret;
}
