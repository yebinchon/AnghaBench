
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct niu {size_t port; TYPE_2__* parent; } ;
struct TYPE_3__ {int** phy_id; } ;
struct TYPE_4__ {TYPE_1__ phy_probe_info; int port_phy; } ;


 int MIF_CONFIG ;
 int MIF_CONFIG_INDIRECT_MODE ;
 int NIU_PHY_ID_MASK ;

 int XMAC_CONFIG ;
 int XMAC_CONFIG_FORCE_LED_ON ;
 int XMAC_CONFIG_LED_POLARITY ;
 int nr64 (int ) ;
 int nr64_mac (int ) ;
 int nw64 (int ,int ) ;
 int nw64_mac (int ,int ) ;
 int phy_decode (int ,size_t) ;
 int xcvr_init_10g_bcm8704 (struct niu*) ;
 int xcvr_init_10g_mrvl88x2011 (struct niu*) ;

__attribute__((used)) static int xcvr_init_10g(struct niu *np)
{
 int phy_id, err;
 u64 val;

 val = nr64_mac(XMAC_CONFIG);
 val &= ~XMAC_CONFIG_LED_POLARITY;
 val |= XMAC_CONFIG_FORCE_LED_ON;
 nw64_mac(XMAC_CONFIG, val);


 val = nr64(MIF_CONFIG);
 val |= MIF_CONFIG_INDIRECT_MODE;
 nw64(MIF_CONFIG, val);

 phy_id = phy_decode(np->parent->port_phy, np->port);
 phy_id = np->parent->phy_probe_info.phy_id[phy_id][np->port];


 switch (phy_id & NIU_PHY_ID_MASK) {
 case 128:
  err = xcvr_init_10g_mrvl88x2011(np);
  break;

 default:
  err = xcvr_init_10g_bcm8704(np);
  break;
 }

 return 0;
}
