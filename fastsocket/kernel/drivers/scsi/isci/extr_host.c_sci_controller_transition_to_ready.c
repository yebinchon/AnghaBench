
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ current_state_id; } ;
struct isci_host {TYPE_1__ sm; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int SCIC_READY ;
 scalar_t__ SCIC_STARTING ;
 int isci_host_start_complete (struct isci_host*,int) ;
 int sci_change_state (TYPE_1__*,int ) ;

void sci_controller_transition_to_ready(struct isci_host *ihost, enum sci_status status)
{
 if (ihost->sm.current_state_id == SCIC_STARTING) {




  sci_change_state(&ihost->sm, SCIC_READY);

  isci_host_start_complete(ihost, status);
 }
}
