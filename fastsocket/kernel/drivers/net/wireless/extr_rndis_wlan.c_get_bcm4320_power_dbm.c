
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rndis_wlan_private {int param_power_output; } ;


 int BCM4320_DEFAULT_TXPOWER_DBM_100 ;
 int BCM4320_DEFAULT_TXPOWER_DBM_25 ;
 int BCM4320_DEFAULT_TXPOWER_DBM_50 ;
 int BCM4320_DEFAULT_TXPOWER_DBM_75 ;

__attribute__((used)) static u32 get_bcm4320_power_dbm(struct rndis_wlan_private *priv)
{
 switch (priv->param_power_output) {
 default:
 case 3:
  return BCM4320_DEFAULT_TXPOWER_DBM_100;
 case 2:
  return BCM4320_DEFAULT_TXPOWER_DBM_75;
 case 1:
  return BCM4320_DEFAULT_TXPOWER_DBM_50;
 case 0:
  return BCM4320_DEFAULT_TXPOWER_DBM_25;
 }
}
