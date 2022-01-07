
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int running_time; int restart_interval; scalar_t__ if_leader; } ;
typedef TYPE_1__ TrackerRunningStatus ;



__attribute__((used)) static int tracker_mem_cmp_tracker_running_status(const void *p1, const void *p2)
{
 TrackerRunningStatus *pStatus1;
 TrackerRunningStatus *pStatus2;
 int sub;

 pStatus1 = (TrackerRunningStatus *)p1;
 pStatus2 = (TrackerRunningStatus *)p2;

    if (pStatus1->if_leader)
    {
        return 1;
    }
    else if (pStatus2->if_leader)
    {
        return -1;
    }

 sub = pStatus1->running_time - pStatus2->running_time;
 if (sub != 0)
 {
  return sub;
 }

 return pStatus2->restart_interval - pStatus1->restart_interval;
}
