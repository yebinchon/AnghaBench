
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct emac_instance {int dummy; } ;


 int EMAC_FTR_STACR_OC_INVERT ;
 int EMAC_STACR_OC ;
 scalar_t__ emac_has_feature (struct emac_instance*,int ) ;

__attribute__((used)) static inline int emac_phy_done(struct emac_instance *dev, u32 stacr)
{
 int done = !!(stacr & EMAC_STACR_OC);

 if (emac_has_feature(dev, EMAC_FTR_STACR_OC_INVERT))
  done = !done;

 return done;
}
