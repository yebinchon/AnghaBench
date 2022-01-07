
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qib_pportdata {int dummy; } ;
struct qib_ibport {scalar_t__ qkey_violations; int port_cap_flags; } ;
struct ib_port_modify {int clr_port_cap_mask; int set_port_cap_mask; } ;
struct ib_device {int dummy; } ;


 int IB_PORT_RESET_QKEY_CNTR ;
 int IB_PORT_SHUTDOWN ;
 int QIB_IB_LINKDOWN ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int qib_cap_mask_chg (struct qib_ibport*) ;
 int qib_set_linkstate (struct qib_pportdata*,int ) ;
 struct qib_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int qib_modify_port(struct ib_device *ibdev, u8 port,
      int port_modify_mask, struct ib_port_modify *props)
{
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);

 ibp->port_cap_flags |= props->set_port_cap_mask;
 ibp->port_cap_flags &= ~props->clr_port_cap_mask;
 if (props->set_port_cap_mask || props->clr_port_cap_mask)
  qib_cap_mask_chg(ibp);
 if (port_modify_mask & IB_PORT_SHUTDOWN)
  qib_set_linkstate(ppd, QIB_IB_LINKDOWN);
 if (port_modify_mask & IB_PORT_RESET_QKEY_CNTR)
  ibp->qkey_violations = 0;
 return 0;
}
