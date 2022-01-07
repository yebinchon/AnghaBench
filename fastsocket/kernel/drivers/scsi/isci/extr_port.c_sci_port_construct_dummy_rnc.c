
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t remote_node_index; int remote_node_port_width; int nexus_loss_timer_enable; int check_bit; int is_valid; int is_remote_node_context; scalar_t__ arbitration_wait_time; scalar_t__ function_number; int logical_port_index; scalar_t__ remote_sas_address_lo; scalar_t__ remote_sas_address_hi; } ;
union scu_remote_node_context {TYPE_2__ ssp; } ;
typedef size_t u16 ;
struct isci_port {int physical_port_index; TYPE_1__* owning_controller; } ;
struct TYPE_3__ {union scu_remote_node_context* remote_node_context_table; } ;


 int memset (union scu_remote_node_context*,int ,int) ;

__attribute__((used)) static void sci_port_construct_dummy_rnc(struct isci_port *iport, u16 rni)
{
 union scu_remote_node_context *rnc;

 rnc = &iport->owning_controller->remote_node_context_table[rni];

 memset(rnc, 0, sizeof(union scu_remote_node_context));

 rnc->ssp.remote_sas_address_hi = 0;
 rnc->ssp.remote_sas_address_lo = 0;

 rnc->ssp.remote_node_index = rni;
 rnc->ssp.remote_node_port_width = 1;
 rnc->ssp.logical_port_index = iport->physical_port_index;

 rnc->ssp.nexus_loss_timer_enable = 0;
 rnc->ssp.check_bit = 0;
 rnc->ssp.is_valid = 1;
 rnc->ssp.is_remote_node_context = 1;
 rnc->ssp.function_number = 0;
 rnc->ssp.arbitration_wait_time = 0;
}
