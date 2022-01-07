
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tlg_ber ;
struct tuner_ber_rate_s {int ber_rate; } ;
struct poseidon {int lock; } ;
struct dvb_frontend {struct poseidon* demodulator_priv; } ;
typedef int s32 ;


 int TUNER_BER_RATE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_get_req (struct poseidon*,int ,int ,struct tuner_ber_rate_s*,int*,int) ;

__attribute__((used)) static int poseidon_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct poseidon *pd = fe->demodulator_priv;
 struct tuner_ber_rate_s tlg_ber = {};
 s32 ret = -1, cmd_status;

 mutex_lock(&pd->lock);
 ret = send_get_req(pd, TUNER_BER_RATE, 0,
    &tlg_ber, &cmd_status, sizeof(tlg_ber));
 if (ret | cmd_status)
  goto out;
 *ber = tlg_ber.ber_rate;
out:
 mutex_unlock(&pd->lock);
 return ret;
}
