
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int dcbx_cap; scalar_t__ default_up; struct net_device* netdev; } ;
struct dcb_app {int protocol; int selector; } ;


 int DCB_CAP_DCBX_VER_IEEE ;
 int IEEE_8021QAZ_APP_SEL_ETHERTYPE ;
 int dcb_ieee_getapp_mask (struct net_device*,struct dcb_app*) ;
 scalar_t__ ffs (int) ;

__attribute__((used)) static void ixgbe_update_default_up(struct ixgbe_adapter *adapter)
{
}
