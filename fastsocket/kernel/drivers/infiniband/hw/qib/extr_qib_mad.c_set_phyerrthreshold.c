
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qib_pportdata {TYPE_1__* dd; } ;
struct TYPE_2__ {int (* f_set_ib_cfg ) (struct qib_pportdata*,int ,int ) ;} ;


 int QIB_IB_CFG_PHYERR_THRESH ;
 int stub1 (struct qib_pportdata*,int ,int ) ;

__attribute__((used)) static int set_phyerrthreshold(struct qib_pportdata *ppd, unsigned n)
{
 (void) ppd->dd->f_set_ib_cfg(ppd, QIB_IB_CFG_PHYERR_THRESH,
      (u32)n);
 return 0;
}
