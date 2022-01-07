
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firedtv {int subunit; int type; int avc_mutex; int avc_data_length; scalar_t__ avc_data; } ;
struct dvb_frontend_parameters {int dummy; } ;
struct avc_command_frame {int subunit; int ctype; } ;
struct TYPE_2__ {int * operand; } ;


 int ALIGN (int,int) ;
 int AVC_CTYPE_CONTROL ;
 int AVC_SUBUNIT_TYPE_TUNER ;
 int BUG () ;




 int avc_tuner_dsd_dvb_c (struct firedtv*,struct dvb_frontend_parameters*) ;
 int avc_tuner_dsd_dvb_t (struct firedtv*,struct dvb_frontend_parameters*) ;
 int avc_tuner_tuneqpsk (struct firedtv*,struct dvb_frontend_parameters*) ;
 int avc_write (struct firedtv*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pad_operands (struct avc_command_frame*,int) ;
 TYPE_1__* r ;
 int * status ;

int avc_tuner_dsd(struct firedtv *fdtv,
    struct dvb_frontend_parameters *params)
{
 struct avc_command_frame *c = (void *)fdtv->avc_data;
 int pos, ret;

 mutex_lock(&fdtv->avc_mutex);

 c->ctype = AVC_CTYPE_CONTROL;
 c->subunit = AVC_SUBUNIT_TYPE_TUNER | fdtv->subunit;

 switch (fdtv->type) {
 case 130:
 case 129: pos = avc_tuner_tuneqpsk(fdtv, params); break;
 case 131: pos = avc_tuner_dsd_dvb_c(fdtv, params); break;
 case 128: pos = avc_tuner_dsd_dvb_t(fdtv, params); break;
 default:
  BUG();
 }
 pad_operands(c, pos);

 fdtv->avc_data_length = ALIGN(3 + pos, 4);
 ret = avc_write(fdtv);
 mutex_unlock(&fdtv->avc_mutex);

 if (ret == 0)
  msleep(500);

 return ret;
}
