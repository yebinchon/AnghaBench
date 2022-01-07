
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vector; scalar_t__ bitcnt; scalar_t__ active; } ;


 TYPE_1__ mm_tracking_struct ;
 int vfree (int *) ;

void mm_track_exit(void)
{




 mm_tracking_struct.active = 0;
 mm_tracking_struct.bitcnt = 0;

 if (mm_tracking_struct.vector != ((void*)0))
  vfree(mm_tracking_struct.vector);
}
