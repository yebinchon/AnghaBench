
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_ctxtdata {TYPE_1__* dd; } ;
struct qib_base_info {int spi_runtime_flags; } ;
struct TYPE_2__ {int flags; } ;


 int QIB_RUNTIME_NODMA_RTAIL ;
 int QIB_RUNTIME_PCIE ;
 int QIB_RUNTIME_SDMA ;
 int QIB_RUNTIME_SPECIAL_TRIGGER ;
 int QIB_USE_SPCL_TRIG ;

__attribute__((used)) static int qib_7220_get_base_info(struct qib_ctxtdata *rcd,
      struct qib_base_info *kinfo)
{
 kinfo->spi_runtime_flags |= QIB_RUNTIME_PCIE |
  QIB_RUNTIME_NODMA_RTAIL | QIB_RUNTIME_SDMA;

 if (rcd->dd->flags & QIB_USE_SPCL_TRIG)
  kinfo->spi_runtime_flags |= QIB_RUNTIME_SPECIAL_TRIGGER;

 return 0;
}
