
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isci_phy {TYPE_1__* transport_layer_registers; } ;
struct TYPE_2__ {int control; int stp_rni; } ;


 int CLEAR_TCI_NCQ_MAPPING_TABLE ;
 int SCU_TLCR_GEN_BIT (int ) ;
 int readl (int *) ;
 int writel (int ,int *) ;

void sci_phy_setup_transport(struct isci_phy *iphy, u32 device_id)
{
 u32 tl_control;

 writel(device_id, &iphy->transport_layer_registers->stp_rni);





 tl_control = readl(&iphy->transport_layer_registers->control);
 tl_control |= SCU_TLCR_GEN_BIT(CLEAR_TCI_NCQ_MAPPING_TABLE);
 writel(tl_control, &iphy->transport_layer_registers->control);
}
