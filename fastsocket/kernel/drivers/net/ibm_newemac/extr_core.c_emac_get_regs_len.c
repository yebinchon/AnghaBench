
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_instance {int dummy; } ;
struct emac_ethtool_regs_subhdr {int dummy; } ;


 int EMAC4_ETHTOOL_REGS_SIZE (struct emac_instance*) ;
 int EMAC_ETHTOOL_REGS_SIZE (struct emac_instance*) ;
 int EMAC_FTR_EMAC4 ;
 scalar_t__ emac_has_feature (struct emac_instance*,int ) ;

__attribute__((used)) static int emac_get_regs_len(struct emac_instance *dev)
{
 if (emac_has_feature(dev, EMAC_FTR_EMAC4))
  return sizeof(struct emac_ethtool_regs_subhdr) +
   EMAC4_ETHTOOL_REGS_SIZE(dev);
 else
  return sizeof(struct emac_ethtool_regs_subhdr) +
   EMAC_ETHTOOL_REGS_SIZE(dev);
}
