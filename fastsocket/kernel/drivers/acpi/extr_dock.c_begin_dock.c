
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int flags; } ;


 int DOCK_DOCKING ;

__attribute__((used)) static inline void begin_dock(struct dock_station *ds)
{
 ds->flags |= DOCK_DOCKING;
}
