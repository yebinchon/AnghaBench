
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_ctxtdata {int dummy; } ;
struct qib_base_info {int spi_runtime_flags; } ;


 int QIB_RUNTIME_FORCE_PIOAVAIL ;
 int QIB_RUNTIME_FORCE_WC_ORDER ;
 int QIB_RUNTIME_PCIE ;
 int QIB_RUNTIME_PIO_REGSWAPPED ;
 scalar_t__ qib_unordered_wc () ;

__attribute__((used)) static int qib_6120_get_base_info(struct qib_ctxtdata *rcd,
      struct qib_base_info *kinfo)
{
 if (qib_unordered_wc())
  kinfo->spi_runtime_flags |= QIB_RUNTIME_FORCE_WC_ORDER;

 kinfo->spi_runtime_flags |= QIB_RUNTIME_PCIE |
  QIB_RUNTIME_FORCE_PIOAVAIL | QIB_RUNTIME_PIO_REGSWAPPED;
 return 0;
}
