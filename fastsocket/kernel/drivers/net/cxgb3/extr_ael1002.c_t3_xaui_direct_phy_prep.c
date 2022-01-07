
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_ops {int dummy; } ;
struct cphy {int dummy; } ;
struct adapter {int dummy; } ;


 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_AUI ;
 int SUPPORTED_TP ;
 int cphy_init (struct cphy*,struct adapter*,int,int *,struct mdio_ops const*,int,char*) ;
 int xaui_direct_ops ;

int t3_xaui_direct_phy_prep(struct cphy *phy, struct adapter *adapter,
       int phy_addr, const struct mdio_ops *mdio_ops)
{
 cphy_init(phy, adapter, phy_addr, &xaui_direct_ops, mdio_ops,
    SUPPORTED_10000baseT_Full | SUPPORTED_AUI | SUPPORTED_TP,
    "10GBASE-CX4");
 return 0;
}
