
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int dummy; } ;


 int handle_dock (struct dock_station*,int) ;

__attribute__((used)) static inline void dock(struct dock_station *ds)
{
 handle_dock(ds, 1);
}
