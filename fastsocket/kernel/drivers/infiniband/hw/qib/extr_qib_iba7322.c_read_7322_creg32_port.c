
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct qib_pportdata {TYPE_2__* cpspec; TYPE_1__* dd; } ;
struct TYPE_4__ {int * cpregbase; } ;
struct TYPE_3__ {int flags; } ;


 int QIB_PRESENT ;
 int readl (int *) ;

__attribute__((used)) static inline u32 read_7322_creg32_port(const struct qib_pportdata *ppd,
     u16 regno)
{
 if (!ppd->cpspec || !ppd->cpspec->cpregbase ||
     !(ppd->dd->flags & QIB_PRESENT))
  return 0;
 return readl(&ppd->cpspec->cpregbase[regno]);
}
