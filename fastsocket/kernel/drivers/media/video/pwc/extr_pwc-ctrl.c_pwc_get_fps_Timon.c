
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwc_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ alternate; } ;


 unsigned int PWC_FPS_MAX_TIMON ;
 unsigned int* Timon_fps_vector ;
 TYPE_1__*** Timon_table ;

__attribute__((used)) static unsigned int pwc_get_fps_Timon(struct pwc_device *pdev, unsigned int index, unsigned int size)
{
 unsigned int i;

 for (i=0; i < PWC_FPS_MAX_TIMON; i++) {
  if (Timon_table[size][i][3].alternate) {
   if (index--==0) return Timon_fps_vector[i];
  }
 }
 return 0;
}
