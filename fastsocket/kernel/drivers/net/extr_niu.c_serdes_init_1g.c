
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int port; } ;


 int EINVAL ;
 int ENET_SERDES_1_PLL_CFG ;
 int ENET_SERDES_PLL_FBDIV2 ;
 int ENET_SERDES_PLL_HRATE0 ;
 int ENET_SERDES_PLL_HRATE1 ;
 int ENET_SERDES_PLL_HRATE2 ;
 int ENET_SERDES_PLL_HRATE3 ;
 int nr64 (int ) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static int serdes_init_1g(struct niu *np)
{
 u64 val;

 val = nr64(ENET_SERDES_1_PLL_CFG);
 val &= ~ENET_SERDES_PLL_FBDIV2;
 switch (np->port) {
 case 0:
  val |= ENET_SERDES_PLL_HRATE0;
  break;
 case 1:
  val |= ENET_SERDES_PLL_HRATE1;
  break;
 case 2:
  val |= ENET_SERDES_PLL_HRATE2;
  break;
 case 3:
  val |= ENET_SERDES_PLL_HRATE3;
  break;
 default:
  return -EINVAL;
 }
 nw64(ENET_SERDES_1_PLL_CFG, val);

 return 0;
}
