
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isci_phy {int protocol; int sm; TYPE_1__* link_layer_registers; } ;
struct TYPE_2__ {int phy_configuration; } ;


 int SAS_PROTOCOL_SSP ;
 int SATA_SPINUP_HOLD ;
 int SCI_PHY_SUB_AWAIT_SAS_SPEED_EN ;
 int SCU_SAS_PCFG_GEN_BIT (int ) ;
 int readl (int *) ;
 int sci_change_state (int *,int ) ;
 int writel (int ,int *) ;

__attribute__((used)) static void sci_phy_start_sas_link_training(struct isci_phy *iphy)
{




 u32 phy_control;

 phy_control = readl(&iphy->link_layer_registers->phy_configuration);
 phy_control |= SCU_SAS_PCFG_GEN_BIT(SATA_SPINUP_HOLD);
 writel(phy_control,
        &iphy->link_layer_registers->phy_configuration);

 sci_change_state(&iphy->sm, SCI_PHY_SUB_AWAIT_SAS_SPEED_EN);

 iphy->protocol = SAS_PROTOCOL_SSP;
}
