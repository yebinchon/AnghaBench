
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_symbol_error_counter; } ;
struct qib_pportdata {int lflags; TYPE_2__* dd; TYPE_1__ ibport_data; } ;
struct TYPE_4__ {int (* f_portcntr ) (struct qib_pportdata*,int ) ;} ;


 int QIBL_LINKACTIVE ;
 int QIBPORTCNTR_IBSYMBOLERR ;
 int stub1 (struct qib_pportdata*,int ) ;

void qib_clear_symerror_on_linkup(unsigned long opaque)
{
 struct qib_pportdata *ppd = (struct qib_pportdata *)opaque;

 if (ppd->lflags & QIBL_LINKACTIVE)
  return;

 ppd->ibport_data.z_symbol_error_counter =
  ppd->dd->f_portcntr(ppd, QIBPORTCNTR_IBSYMBOLERR);
}
