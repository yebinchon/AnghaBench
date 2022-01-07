
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sbmac_softc {int sbm_duplex; int sbm_fc; scalar_t__ sbm_state; int sbm_maccfg; } ;
typedef enum sbmac_fc { ____Placeholder_sbmac_fc } sbmac_fc ;
typedef enum sbmac_duplex { ____Placeholder_sbmac_duplex } sbmac_duplex ;


 int M_MAC_FC_CMD ;
 int M_MAC_FC_SEL ;
 int M_MAC_HDX_EN ;
 int V_MAC_FC_CMD_DISABLED ;
 int V_MAC_FC_CMD_ENABLED ;
 int V_MAC_FC_CMD_ENAB_FALSECARR ;
 int __raw_readq (int ) ;
 int __raw_writeq (int,int ) ;






 scalar_t__ sbmac_state_on ;

__attribute__((used)) static int sbmac_set_duplex(struct sbmac_softc *s, enum sbmac_duplex duplex,
       enum sbmac_fc fc)
{
 uint64_t cfg;





 s->sbm_duplex = duplex;
 s->sbm_fc = fc;

 if (s->sbm_state == sbmac_state_on)
  return 0;





 cfg = __raw_readq(s->sbm_maccfg);





 cfg &= ~(M_MAC_FC_SEL | M_MAC_FC_CMD | M_MAC_HDX_EN);


 switch (duplex) {
 case 132:
  switch (fc) {
  case 129:
   cfg |= M_MAC_HDX_EN | V_MAC_FC_CMD_DISABLED;
   break;

  case 130:
   cfg |= M_MAC_HDX_EN | V_MAC_FC_CMD_ENABLED;
   break;

  case 131:
   cfg |= M_MAC_HDX_EN | V_MAC_FC_CMD_ENAB_FALSECARR;
   break;

  case 128:
  default:
   return 0;
  }
  break;

 case 133:
  switch (fc) {
  case 129:
   cfg |= V_MAC_FC_CMD_DISABLED;
   break;

  case 128:
   cfg |= V_MAC_FC_CMD_ENABLED;
   break;

  case 130:
  case 131:
  default:
   return 0;
  }
  break;
 default:
  return 0;
 }





 __raw_writeq(cfg, s->sbm_maccfg);

 return 1;
}
