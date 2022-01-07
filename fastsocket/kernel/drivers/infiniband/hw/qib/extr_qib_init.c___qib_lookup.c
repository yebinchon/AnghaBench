
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 struct qib_devdata* idr_find (int *,int) ;
 int qib_unit_table ;

__attribute__((used)) static inline struct qib_devdata *__qib_lookup(int unit)
{
 return idr_find(&qib_unit_table, unit);
}
