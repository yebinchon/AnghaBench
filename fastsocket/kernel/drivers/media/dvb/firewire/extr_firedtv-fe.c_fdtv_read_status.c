
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv_tuner_status {scalar_t__ no_rf; } ;
struct firedtv {int dummy; } ;
struct dvb_frontend {struct firedtv* sec_priv; } ;
typedef int fe_status_t ;


 int EINVAL ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 scalar_t__ avc_tuner_status (struct firedtv*,struct firedtv_tuner_status*) ;

__attribute__((used)) static int fdtv_read_status(struct dvb_frontend *fe, fe_status_t *status)
{
 struct firedtv *fdtv = fe->sec_priv;
 struct firedtv_tuner_status stat;

 if (avc_tuner_status(fdtv, &stat))
  return -EINVAL;

 if (stat.no_rf)
  *status = 0;
 else
  *status = FE_HAS_SIGNAL | FE_HAS_VITERBI | FE_HAS_SYNC |
     FE_HAS_CARRIER | FE_HAS_LOCK;
 return 0;
}
