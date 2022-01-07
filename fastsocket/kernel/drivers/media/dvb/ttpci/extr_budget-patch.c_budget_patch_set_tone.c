
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct budget_patch {int dummy; } ;
typedef int fe_sec_tone_mode_t ;
struct TYPE_2__ {scalar_t__ priv; } ;


 int EINVAL ;


 int av7110_set22k (struct budget_patch*,int) ;

__attribute__((used)) static int budget_patch_set_tone(struct dvb_frontend* fe, fe_sec_tone_mode_t tone)
{
 struct budget_patch* budget = (struct budget_patch*) fe->dvb->priv;

 switch (tone) {
 case 128:
  av7110_set22k (budget, 1);
  break;

 case 129:
  av7110_set22k (budget, 0);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
