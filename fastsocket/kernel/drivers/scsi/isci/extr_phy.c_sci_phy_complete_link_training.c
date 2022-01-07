
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isci_phy {int max_negotiated_speed; int sm; } ;
typedef enum sas_linkrate { ____Placeholder_sas_linkrate } sas_linkrate ;


 int sci_change_state (int *,int ) ;

__attribute__((used)) static void sci_phy_complete_link_training(struct isci_phy *iphy,
        enum sas_linkrate max_link_rate,
        u32 next_state)
{
 iphy->max_negotiated_speed = max_link_rate;

 sci_change_state(&iphy->sm, next_state);
}
