
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct av7110 {int dummy; } ;
typedef int fe_sec_tone_mode_t ;
struct TYPE_2__ {struct av7110* priv; } ;


 int EINVAL ;


 int Set22K (struct av7110*,int) ;

__attribute__((used)) static int av7110_set_tone(struct dvb_frontend* fe, fe_sec_tone_mode_t tone)
{
 struct av7110* av7110 = fe->dvb->priv;

 switch (tone) {
 case 128:
  return Set22K(av7110, 1);

 case 129:
  return Set22K(av7110, 0);

 default:
  return -EINVAL;
 }
}
