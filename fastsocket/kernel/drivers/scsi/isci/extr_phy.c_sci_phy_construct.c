
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isci_port {int dummy; } ;
struct isci_phy {int bcn_received_while_port_unassigned; int sata_timer; int max_negotiated_speed; int * link_layer_registers; int protocol; int phy_index; struct isci_port* owning_port; int sm; } ;


 int SAS_LINK_RATE_UNKNOWN ;
 int SAS_PROTOCOL_NONE ;
 int SCI_PHY_INITIAL ;
 int phy_sata_timeout ;
 int sci_init_sm (int *,int ,int ) ;
 int sci_init_timer (int *,int ) ;
 int sci_phy_state_table ;

void sci_phy_construct(struct isci_phy *iphy,
       struct isci_port *iport, u8 phy_index)
{
 sci_init_sm(&iphy->sm, sci_phy_state_table, SCI_PHY_INITIAL);


 iphy->owning_port = iport;
 iphy->phy_index = phy_index;
 iphy->bcn_received_while_port_unassigned = 0;
 iphy->protocol = SAS_PROTOCOL_NONE;
 iphy->link_layer_registers = ((void*)0);
 iphy->max_negotiated_speed = SAS_LINK_RATE_UNKNOWN;


 sci_init_timer(&iphy->sata_timer, phy_sata_timeout);
}
