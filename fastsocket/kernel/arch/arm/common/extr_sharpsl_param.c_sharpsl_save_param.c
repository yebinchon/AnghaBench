
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sharpsl_param_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ comadj_keyword; int comadj; scalar_t__ phad_keyword; int phadadj; scalar_t__ uuid_keyword; int* uuid; scalar_t__ touch_keyword; int touch_xp; scalar_t__ adadj_keyword; int adadj; } ;


 scalar_t__ AD_MAGIC ;
 scalar_t__ COMADJ_MAGIC ;
 scalar_t__ PARAM_BASE ;
 scalar_t__ PHAD_MAGIC ;
 scalar_t__ TOUCH_MAGIC ;
 scalar_t__ UUID_MAGIC ;
 int memcpy (TYPE_1__*,void*,int) ;
 TYPE_1__ sharpsl_param ;

void sharpsl_save_param(void)
{
 memcpy(&sharpsl_param, (void *)PARAM_BASE, sizeof(struct sharpsl_param_info));

 if (sharpsl_param.comadj_keyword != COMADJ_MAGIC)
  sharpsl_param.comadj=-1;

 if (sharpsl_param.phad_keyword != PHAD_MAGIC)
  sharpsl_param.phadadj=-1;

 if (sharpsl_param.uuid_keyword != UUID_MAGIC)
  sharpsl_param.uuid[0]=-1;

 if (sharpsl_param.touch_keyword != TOUCH_MAGIC)
  sharpsl_param.touch_xp=-1;

 if (sharpsl_param.adadj_keyword != AD_MAGIC)
  sharpsl_param.adadj=-1;
}
