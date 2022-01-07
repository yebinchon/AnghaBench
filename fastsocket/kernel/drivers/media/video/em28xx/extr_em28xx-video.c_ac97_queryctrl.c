
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_queryctrl {scalar_t__ id; } ;
struct TYPE_4__ {scalar_t__ id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ac97_qctrl ;
 int memcpy (struct v4l2_queryctrl*,TYPE_1__*,int) ;

__attribute__((used)) static int ac97_queryctrl(struct v4l2_queryctrl *qc)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ac97_qctrl); i++) {
  if (qc->id && qc->id == ac97_qctrl[i].id) {
   memcpy(qc, &(ac97_qctrl[i]), sizeof(*qc));
   return 0;
  }
 }


 return 1;
}
