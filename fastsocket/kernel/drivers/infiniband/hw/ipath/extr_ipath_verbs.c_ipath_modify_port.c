
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipath_ibdev {scalar_t__ qkey_violations; int dd; int port_cap_flags; } ;
struct ib_port_modify {int clr_port_cap_mask; int set_port_cap_mask; } ;
struct ib_device {int dummy; } ;


 int IB_PORT_RESET_QKEY_CNTR ;
 int IB_PORT_SHUTDOWN ;
 int IPATH_IB_LINKDOWN ;
 int ipath_set_linkstate (int ,int ) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int ipath_modify_port(struct ib_device *ibdev,
        u8 port, int port_modify_mask,
        struct ib_port_modify *props)
{
 struct ipath_ibdev *dev = to_idev(ibdev);

 dev->port_cap_flags |= props->set_port_cap_mask;
 dev->port_cap_flags &= ~props->clr_port_cap_mask;
 if (port_modify_mask & IB_PORT_SHUTDOWN)
  ipath_set_linkstate(dev->dd, IPATH_IB_LINKDOWN);
 if (port_modify_mask & IB_PORT_RESET_QKEY_CNTR)
  dev->qkey_violations = 0;
 return 0;
}
