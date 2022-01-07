
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int current_state_id; } ;
struct isci_phy {TYPE_1__ sm; } ;
typedef enum sci_phy_states { ____Placeholder_sci_phy_states } sci_phy_states ;
__attribute__((used)) static bool is_phy_starting(struct isci_phy *iphy)
{
 enum sci_phy_states state;

 state = iphy->sm.current_state_id;
 switch (state) {
 case 138:
 case 128:
 case 134:
 case 137:
 case 135:
 case 132:
 case 133:
 case 131:
 case 136:
 case 130:
 case 129:
  return 1;
 default:
  return 0;
 }
}
