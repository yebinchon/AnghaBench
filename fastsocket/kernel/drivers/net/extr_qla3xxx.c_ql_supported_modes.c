
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql3_adapter {int flags; } ;


 int QL_LINK_OPTICAL ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 ql_supported_modes(struct ql3_adapter *qdev)
{
 u32 supported;

 if (test_bit(QL_LINK_OPTICAL,&qdev->flags)) {
  supported = SUPPORTED_1000baseT_Full | SUPPORTED_FIBRE
      | SUPPORTED_Autoneg;
 } else {
  supported = SUPPORTED_10baseT_Half
      | SUPPORTED_10baseT_Full
      | SUPPORTED_100baseT_Half
      | SUPPORTED_100baseT_Full
      | SUPPORTED_1000baseT_Half
      | SUPPORTED_1000baseT_Full
      | SUPPORTED_Autoneg | SUPPORTED_TP;
 }

 return supported;
}
