
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct isci_host {int dummy; } ;


 scalar_t__ SCIC_SDS_CONTROLLER_PHY_START_TIMEOUT ;
 int SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL ;
 scalar_t__ SCIC_SDS_SIGNATURE_FIS_TIMEOUT ;
 int SCI_MAX_PHYS ;

__attribute__((used)) static u32 sci_controller_get_suggested_start_timeout(struct isci_host *ihost)
{

 if (!ihost)
  return 0;
 return SCIC_SDS_SIGNATURE_FIS_TIMEOUT
  + SCIC_SDS_CONTROLLER_PHY_START_TIMEOUT
  + ((SCI_MAX_PHYS - 1) * SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL);
}
