
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int flags; int ndev; int link_config; } ;


 int CFG_LOOPBACK_PCS ;
 int QL_LB_LINK_UP ;
 int clear_bit (int ,int *) ;
 int netif_carrier_on (int ) ;
 int ql_mb_set_port_cfg (struct ql_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ql_stop_loopback(struct ql_adapter *qdev)
{
 qdev->link_config &= ~CFG_LOOPBACK_PCS;
 ql_mb_set_port_cfg(qdev);
 if (test_bit(QL_LB_LINK_UP, &qdev->flags)) {
  netif_carrier_on(qdev->ndev);
  clear_bit(QL_LB_LINK_UP, &qdev->flags);
 }
}
