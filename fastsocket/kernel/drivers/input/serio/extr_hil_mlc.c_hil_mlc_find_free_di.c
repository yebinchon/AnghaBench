
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* di_map; } ;
typedef TYPE_1__ hil_mlc ;


 int HIL_MLC_DEVMEM ;

__attribute__((used)) static int hil_mlc_find_free_di(hil_mlc *mlc)
{
 int idx;




 for (idx = 0; idx < HIL_MLC_DEVMEM; idx++) {
  int j, found = 0;

  for (j = 0; j < 7 ; j++)
   if (mlc->di_map[j] == idx)
    found++;

  if (!found)
   break;
 }

 return idx;
}
