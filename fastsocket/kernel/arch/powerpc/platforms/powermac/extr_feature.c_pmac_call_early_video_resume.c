
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmac_early_vresume_data ;
 int pmac_early_vresume_proc (int ) ;

void pmac_call_early_video_resume(void)
{
 if (pmac_early_vresume_proc)
  pmac_early_vresume_proc(pmac_early_vresume_data);
}
