
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct qib_devdata {int flags; TYPE_1__* cspec; } ;
struct TYPE_2__ {int * cregbase; } ;


 int QIB_PRESENT ;
 int readl (int *) ;

__attribute__((used)) static inline u32 read_7322_creg32(const struct qib_devdata *dd, u16 regno)
{
 if (!dd->cspec->cregbase || !(dd->flags & QIB_PRESENT))
  return 0;
 return readl(&dd->cspec->cregbase[regno]);


}
