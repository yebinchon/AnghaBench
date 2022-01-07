
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sci_port_configuration_agent {int timer; int link_down_handler; int link_up_handler; } ;
struct TYPE_3__ {int mode_type; } ;
struct TYPE_4__ {TYPE_1__ controller; } ;
struct isci_host {TYPE_2__ oem_parameters; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;
typedef enum sci_port_configuration_mode { ____Placeholder_sci_port_configuration_mode } sci_port_configuration_mode ;


 int SCIC_PORT_MANUAL_CONFIGURATION_MODE ;
 int apc_agent_timeout ;
 int mpc_agent_timeout ;
 int sci_apc_agent_link_down ;
 int sci_apc_agent_link_up ;
 int sci_apc_agent_validate_phy_configuration (struct isci_host*,struct sci_port_configuration_agent*) ;
 int sci_init_timer (int *,int ) ;
 int sci_mpc_agent_link_down ;
 int sci_mpc_agent_link_up ;
 int sci_mpc_agent_validate_phy_configuration (struct isci_host*,struct sci_port_configuration_agent*) ;

enum sci_status sci_port_configuration_agent_initialize(
 struct isci_host *ihost,
 struct sci_port_configuration_agent *port_agent)
{
 enum sci_status status;
 enum sci_port_configuration_mode mode;

 mode = ihost->oem_parameters.controller.mode_type;

 if (mode == SCIC_PORT_MANUAL_CONFIGURATION_MODE) {
  status = sci_mpc_agent_validate_phy_configuration(
    ihost, port_agent);

  port_agent->link_up_handler = sci_mpc_agent_link_up;
  port_agent->link_down_handler = sci_mpc_agent_link_down;

  sci_init_timer(&port_agent->timer, mpc_agent_timeout);
 } else {
  status = sci_apc_agent_validate_phy_configuration(
    ihost, port_agent);

  port_agent->link_up_handler = sci_apc_agent_link_up;
  port_agent->link_down_handler = sci_apc_agent_link_down;

  sci_init_timer(&port_agent->timer, apc_agent_timeout);
 }

 return status;
}
