
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int ALL_FALLBACK_ON ;
 int hdx_loopback_off ;
 int ns_10_base_t_hdx_loopack (struct phy_device*,int ) ;
 int ns_ack_interrupt (struct phy_device*) ;
 int ns_giga_speed_fallback (struct phy_device*,int ) ;

__attribute__((used)) static int ns_config_init(struct phy_device *phydev)
{
 ns_giga_speed_fallback(phydev, ALL_FALLBACK_ON);


 ns_10_base_t_hdx_loopack(phydev, hdx_loopback_off);
 return ns_ack_interrupt(phydev);
}
