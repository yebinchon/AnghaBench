
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sbmac_softc {int sbm_speed; scalar_t__ sbm_state; int sbm_maccfg; int sbm_framecfg; } ;
typedef enum sbmac_speed { ____Placeholder_sbmac_speed } sbmac_speed ;


 int K_MAC_IFG_THRSH_10 ;
 int M_MAC_BURST_EN ;
 int M_MAC_IFG_RX ;
 int M_MAC_IFG_THRSH ;
 int M_MAC_IFG_TX ;
 int M_MAC_SLOT_SIZE ;
 int M_MAC_SPEED_SEL ;
 int V_MAC_IFG_RX_10 ;
 int V_MAC_IFG_RX_100 ;
 int V_MAC_IFG_RX_1000 ;
 int V_MAC_IFG_THRSH_100 ;
 int V_MAC_IFG_THRSH_1000 ;
 int V_MAC_IFG_TX_10 ;
 int V_MAC_IFG_TX_100 ;
 int V_MAC_IFG_TX_1000 ;
 int V_MAC_SLOT_SIZE_10 ;
 int V_MAC_SLOT_SIZE_100 ;
 int V_MAC_SLOT_SIZE_1000 ;
 int V_MAC_SPEED_SEL_1000MBPS ;
 int V_MAC_SPEED_SEL_100MBPS ;
 int V_MAC_SPEED_SEL_10MBPS ;
 int __raw_readq (int ) ;
 int __raw_writeq (int,int ) ;



 scalar_t__ sbmac_state_on ;

__attribute__((used)) static int sbmac_set_speed(struct sbmac_softc *s, enum sbmac_speed speed)
{
 uint64_t cfg;
 uint64_t framecfg;





 s->sbm_speed = speed;

 if (s->sbm_state == sbmac_state_on)
  return 0;





 cfg = __raw_readq(s->sbm_maccfg);
 framecfg = __raw_readq(s->sbm_framecfg);





 cfg &= ~(M_MAC_BURST_EN | M_MAC_SPEED_SEL);
 framecfg &= ~(M_MAC_IFG_RX | M_MAC_IFG_TX | M_MAC_IFG_THRSH |
        M_MAC_SLOT_SIZE);





 switch (speed) {
 case 130:
  framecfg |= V_MAC_IFG_RX_10 |
   V_MAC_IFG_TX_10 |
   K_MAC_IFG_THRSH_10 |
   V_MAC_SLOT_SIZE_10;
  cfg |= V_MAC_SPEED_SEL_10MBPS;
  break;

 case 129:
  framecfg |= V_MAC_IFG_RX_100 |
   V_MAC_IFG_TX_100 |
   V_MAC_IFG_THRSH_100 |
   V_MAC_SLOT_SIZE_100;
  cfg |= V_MAC_SPEED_SEL_100MBPS ;
  break;

 case 128:
  framecfg |= V_MAC_IFG_RX_1000 |
   V_MAC_IFG_TX_1000 |
   V_MAC_IFG_THRSH_1000 |
   V_MAC_SLOT_SIZE_1000;
  cfg |= V_MAC_SPEED_SEL_1000MBPS | M_MAC_BURST_EN;
  break;

 default:
  return 0;
 }





 __raw_writeq(framecfg, s->sbm_framecfg);
 __raw_writeq(cfg, s->sbm_maccfg);

 return 1;
}
