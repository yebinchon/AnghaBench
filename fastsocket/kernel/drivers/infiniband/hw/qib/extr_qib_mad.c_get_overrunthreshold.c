
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_pportdata {TYPE_1__* dd; } ;
struct TYPE_2__ {int (* f_get_ib_cfg ) (struct qib_pportdata*,int ) ;} ;


 int QIB_IB_CFG_OVERRUN_THRESH ;
 int stub1 (struct qib_pportdata*,int ) ;

__attribute__((used)) static int get_overrunthreshold(struct qib_pportdata *ppd)
{
 return ppd->dd->f_get_ib_cfg(ppd, QIB_IB_CFG_OVERRUN_THRESH);
}
