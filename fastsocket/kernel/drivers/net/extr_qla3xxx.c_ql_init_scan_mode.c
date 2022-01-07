
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int flags; } ;


 int QL_LINK_OPTICAL ;
 int ql_mii_enable_scan_mode (struct ql3_adapter*) ;
 int ql_petbi_init_ex (struct ql3_adapter*) ;
 int ql_phy_init_ex (struct ql3_adapter*) ;
 scalar_t__ ql_this_adapter_controls_port (struct ql3_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ql_init_scan_mode(struct ql3_adapter *qdev)
{
 ql_mii_enable_scan_mode(qdev);

 if (test_bit(QL_LINK_OPTICAL,&qdev->flags)) {
  if (ql_this_adapter_controls_port(qdev))
   ql_petbi_init_ex(qdev);
 } else {
  if (ql_this_adapter_controls_port(qdev))
   ql_phy_init_ex(qdev);
 }
}
