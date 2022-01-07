
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct firedtv_tuner_status {int carrier_noise_ratio; } ;
struct firedtv {int dummy; } ;
struct dvb_frontend {struct firedtv* sec_priv; } ;


 int EINVAL ;
 scalar_t__ avc_tuner_status (struct firedtv*,struct firedtv_tuner_status*) ;

__attribute__((used)) static int fdtv_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct firedtv *fdtv = fe->sec_priv;
 struct firedtv_tuner_status stat;

 if (avc_tuner_status(fdtv, &stat))
  return -EINVAL;


 *snr = stat.carrier_noise_ratio * 257;
 return 0;
}
