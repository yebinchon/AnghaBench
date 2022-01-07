
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int port_link_up; int ndev; } ;


 int STS ;
 int ifup ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_route_initialize (struct ql_adapter*) ;
 int ql_set_mac_addr (struct ql_adapter*,int) ;

int ql_cam_route_initialize(struct ql_adapter *qdev)
{
 int status, set;





 set = ql_read32(qdev, STS);
 set &= qdev->port_link_up;
 status = ql_set_mac_addr(qdev, set);
 if (status) {
  netif_err(qdev, ifup, qdev->ndev, "Failed to init mac address.\n");
  return status;
 }

 status = ql_route_initialize(qdev);
 if (status)
  netif_err(qdev, ifup, qdev->ndev, "Failed to init routing table.\n");

 return status;
}
