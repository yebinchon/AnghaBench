
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_instance {int cell_index; } ;


 int EMAC_FTR_440EP_PHY_CLK_FIX ;
 int SDR0 ;
 int SDR0_MFR ;
 int SDR0_MFR_ECS ;
 int dcri_clrset (int ,int ,int ,int) ;
 scalar_t__ emac_has_feature (struct emac_instance*,int ) ;

__attribute__((used)) static inline void emac_rx_clk_tx(struct emac_instance *dev)
{





}
