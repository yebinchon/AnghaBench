
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ushort ;
struct ipath_devdata {TYPE_1__* ipath_kregs; void* ipath_p0_rcvegrcnt; void* ipath_portcnt; } ;
struct TYPE_2__ {int kr_rcvegrcnt; int kr_portcnt; } ;


 void* ipath_read_kreg32 (struct ipath_devdata*,int ) ;

__attribute__((used)) static void ipath_ht_config_ports(struct ipath_devdata *dd, ushort cfgports)
{
 dd->ipath_portcnt =
  ipath_read_kreg32(dd, dd->ipath_kregs->kr_portcnt);
 dd->ipath_p0_rcvegrcnt =
  ipath_read_kreg32(dd, dd->ipath_kregs->kr_rcvegrcnt);
}
