
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* di_map; TYPE_1__* serio_map; } ;
typedef TYPE_2__ hil_mlc ;
struct TYPE_4__ {int di_revmap; } ;


 int HIL_MLC_DEVMEM ;

__attribute__((used)) static inline void hil_mlc_clean_serio_map(hil_mlc *mlc)
{
 int idx;

 for (idx = 0; idx < HIL_MLC_DEVMEM; idx++) {
  int j, found = 0;

  for (j = 0; j < 7 ; j++)
   if (mlc->di_map[j] == idx)
    found++;

  if (!found)
   mlc->serio_map[idx].di_revmap = -1;
 }
}
