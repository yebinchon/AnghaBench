
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct isci_port {int active_phy_mask; int hang_detect_users; TYPE_2__** phy_table; } ;
struct TYPE_4__ {TYPE_1__* link_layer_registers; } ;
struct TYPE_3__ {int link_layer_hang_detection_timeout; } ;


 int SCI_MAX_PHYS ;
 int writel (int,int *) ;

void sci_port_set_hang_detection_timeout(struct isci_port *iport, u32 timeout)
{
 int phy_index;
 u32 phy_mask = iport->active_phy_mask;

 if (timeout)
  ++iport->hang_detect_users;
 else if (iport->hang_detect_users > 1)
  --iport->hang_detect_users;
 else
  iport->hang_detect_users = 0;

 if (timeout || (iport->hang_detect_users == 0)) {
  for (phy_index = 0; phy_index < SCI_MAX_PHYS; phy_index++) {
   if ((phy_mask >> phy_index) & 1) {
    writel(timeout,
           &iport->phy_table[phy_index]
       ->link_layer_registers
       ->link_layer_hang_detection_timeout);
   }
  }
 }
}
