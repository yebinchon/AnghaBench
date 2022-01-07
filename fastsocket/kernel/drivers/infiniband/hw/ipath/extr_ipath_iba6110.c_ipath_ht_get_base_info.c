
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_portdata {TYPE_1__* port_dd; } ;
struct ipath_base_info {int spi_runtime_flags; } ;
struct TYPE_2__ {int ipath_minrev; } ;


 int IPATH_RUNTIME_HT ;
 int IPATH_RUNTIME_PIO_REGSWAPPED ;
 int IPATH_RUNTIME_RCVHDR_COPY ;

__attribute__((used)) static int ipath_ht_get_base_info(struct ipath_portdata *pd, void *kbase)
{
 struct ipath_base_info *kinfo = kbase;

 kinfo->spi_runtime_flags |= IPATH_RUNTIME_HT |
  IPATH_RUNTIME_PIO_REGSWAPPED;

 if (pd->port_dd->ipath_minrev < 4)
  kinfo->spi_runtime_flags |= IPATH_RUNTIME_RCVHDR_COPY;

 return 0;
}
