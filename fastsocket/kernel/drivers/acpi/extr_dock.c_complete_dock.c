
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int last_dock_time; int flags; } ;


 int DOCK_DOCKING ;
 int jiffies ;

__attribute__((used)) static inline void complete_dock(struct dock_station *ds)
{
 ds->flags &= ~(DOCK_DOCKING);
 ds->last_dock_time = jiffies;
}
