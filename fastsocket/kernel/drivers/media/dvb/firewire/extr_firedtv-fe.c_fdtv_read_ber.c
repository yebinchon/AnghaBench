
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct firedtv_tuner_status {int ber; } ;
struct firedtv {int dummy; } ;
struct dvb_frontend {struct firedtv* sec_priv; } ;


 int EINVAL ;
 scalar_t__ avc_tuner_status (struct firedtv*,struct firedtv_tuner_status*) ;

__attribute__((used)) static int fdtv_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct firedtv *fdtv = fe->sec_priv;
 struct firedtv_tuner_status stat;

 if (avc_tuner_status(fdtv, &stat))
  return -EINVAL;

 *ber = stat.ber;
 return 0;
}
