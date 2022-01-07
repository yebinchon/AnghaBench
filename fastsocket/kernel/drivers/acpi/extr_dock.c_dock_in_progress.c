
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int flags; scalar_t__ last_dock_time; } ;


 int DOCK_DOCKING ;
 scalar_t__ HZ ;
 int jiffies ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static int dock_in_progress(struct dock_station *ds)
{
 if ((ds->flags & DOCK_DOCKING) ||
     time_before(jiffies, (ds->last_dock_time + HZ)))
  return 1;
 return 0;
}
