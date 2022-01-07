
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct av7110 {int (* fe_set_tone ) (struct dvb_frontend*,int ) ;int saved_tone; } ;
typedef int fe_sec_tone_mode_t ;
struct TYPE_2__ {struct av7110* priv; } ;


 int av7110_fe_lock_fix (struct av7110*,int ) ;
 int stub1 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int av7110_fe_set_tone(struct dvb_frontend* fe, fe_sec_tone_mode_t tone)
{
 struct av7110* av7110 = fe->dvb->priv;

 int ret = av7110_fe_lock_fix(av7110, 0);
 if (!ret) {
  av7110->saved_tone = tone;
  ret = av7110->fe_set_tone(fe, tone);
 }
 return ret;
}
