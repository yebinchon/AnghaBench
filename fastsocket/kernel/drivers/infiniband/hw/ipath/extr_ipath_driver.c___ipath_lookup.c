
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int dummy; } ;


 struct ipath_devdata* idr_find (int *,int) ;
 int unit_table ;

__attribute__((used)) static inline struct ipath_devdata *__ipath_lookup(int unit)
{
 return idr_find(&unit_table, unit);
}
