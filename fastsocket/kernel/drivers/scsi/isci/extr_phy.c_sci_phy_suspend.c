
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isci_phy {TYPE_1__* link_layer_registers; } ;
struct TYPE_2__ {int phy_configuration; } ;


 int SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ;
 int SCU_SAS_PCFG_GEN_BIT (int ) ;
 int SUSPEND_PROTOCOL_ENGINE ;
 int readl (int *) ;
 int sci_phy_setup_transport (struct isci_phy*,int ) ;
 int writel (int ,int *) ;

__attribute__((used)) static void sci_phy_suspend(struct isci_phy *iphy)
{
 u32 scu_sas_pcfg_value;

 scu_sas_pcfg_value =
  readl(&iphy->link_layer_registers->phy_configuration);
 scu_sas_pcfg_value |= SCU_SAS_PCFG_GEN_BIT(SUSPEND_PROTOCOL_ENGINE);
 writel(scu_sas_pcfg_value,
  &iphy->link_layer_registers->phy_configuration);

 sci_phy_setup_transport(iphy, SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX);
}
