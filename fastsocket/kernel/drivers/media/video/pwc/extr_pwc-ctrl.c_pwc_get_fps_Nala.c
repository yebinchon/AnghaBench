
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwc_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ alternate; } ;


 unsigned int* Nala_fps_vector ;
 TYPE_1__** Nala_table ;
 unsigned int PWC_FPS_MAX_NALA ;

__attribute__((used)) static unsigned int pwc_get_fps_Nala(struct pwc_device *pdev, unsigned int index, unsigned int size)
{
 unsigned int i;

 for (i = 0; i < PWC_FPS_MAX_NALA; i++) {
  if (Nala_table[size][i].alternate) {
   if (index--==0) return Nala_fps_vector[i];
  }
 }
 return 0;
}
