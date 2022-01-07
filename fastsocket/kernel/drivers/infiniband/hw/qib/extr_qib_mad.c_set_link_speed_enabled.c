
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qib_pportdata {TYPE_1__* dd; } ;
struct TYPE_2__ {int (* f_set_ib_cfg ) (struct qib_pportdata*,int ,int ) ;} ;


 int QIB_IB_CFG_SPD_ENB ;
 int stub1 (struct qib_pportdata*,int ,int ) ;

__attribute__((used)) static void set_link_speed_enabled(struct qib_pportdata *ppd, u32 s)
{
 (void) ppd->dd->f_set_ib_cfg(ppd, QIB_IB_CFG_SPD_ENB, s);
}
