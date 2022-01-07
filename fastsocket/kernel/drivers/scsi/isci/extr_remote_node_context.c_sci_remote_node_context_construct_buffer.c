
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int remote_node_index; int nexus_loss_timer_enable; int check_bit; int is_valid; int is_remote_node_context; scalar_t__ oaf_more_compatibility_features; scalar_t__ oaf_source_zone_group; scalar_t__ oaf_features; int oaf_connection_rate; scalar_t__ initial_arbitration_wait_time; int connection_inactivity_timeout; int connection_occupancy_timeout; scalar_t__ arbitration_wait_time; scalar_t__ function_number; int remote_sas_address_lo; int remote_sas_address_hi; int logical_port_index; int remote_node_port_width; } ;
union scu_remote_node_context {TYPE_3__ ssp; } ;
struct sci_remote_node_context {int remote_node_index; } ;
struct isci_remote_device {int connection_rate; TYPE_1__* owning_port; int device_port_width; struct domain_device* domain_dev; } ;
struct TYPE_5__ {int ssp_inactivity_timeout; int ssp_max_occupancy_timeout; int stp_inactivity_timeout; int stp_max_occupancy_timeout; } ;
struct isci_host {TYPE_2__ user_parameters; } ;
struct domain_device {int sas_addr; } ;
typedef int __le64 ;
struct TYPE_4__ {int physical_port_index; struct isci_host* owning_controller; } ;


 int SAS_ADDR (int ) ;
 int cpu_to_le64 (int ) ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int lower_32_bits (int ) ;
 int memset (union scu_remote_node_context*,int ,int) ;
 struct isci_remote_device* rnc_to_dev (struct sci_remote_node_context*) ;
 int sci_remote_device_node_count (struct isci_remote_device*) ;
 union scu_remote_node_context* sci_rnc_by_id (struct isci_host*,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void sci_remote_node_context_construct_buffer(struct sci_remote_node_context *sci_rnc)
{
 struct isci_remote_device *idev = rnc_to_dev(sci_rnc);
 struct domain_device *dev = idev->domain_dev;
 int rni = sci_rnc->remote_node_index;
 union scu_remote_node_context *rnc;
 struct isci_host *ihost;
 __le64 sas_addr;

 ihost = idev->owning_port->owning_controller;
 rnc = sci_rnc_by_id(ihost, rni);

 memset(rnc, 0, sizeof(union scu_remote_node_context)
  * sci_remote_device_node_count(idev));

 rnc->ssp.remote_node_index = rni;
 rnc->ssp.remote_node_port_width = idev->device_port_width;
 rnc->ssp.logical_port_index = idev->owning_port->physical_port_index;


 sas_addr = cpu_to_le64(SAS_ADDR(dev->sas_addr));
 rnc->ssp.remote_sas_address_hi = upper_32_bits(sas_addr);
 rnc->ssp.remote_sas_address_lo = lower_32_bits(sas_addr);

 rnc->ssp.nexus_loss_timer_enable = 1;
 rnc->ssp.check_bit = 0;
 rnc->ssp.is_valid = 0;
 rnc->ssp.is_remote_node_context = 1;
 rnc->ssp.function_number = 0;

 rnc->ssp.arbitration_wait_time = 0;

 if (dev_is_sata(dev)) {
  rnc->ssp.connection_occupancy_timeout =
   ihost->user_parameters.stp_max_occupancy_timeout;
  rnc->ssp.connection_inactivity_timeout =
   ihost->user_parameters.stp_inactivity_timeout;
 } else {
  rnc->ssp.connection_occupancy_timeout =
   ihost->user_parameters.ssp_max_occupancy_timeout;
  rnc->ssp.connection_inactivity_timeout =
   ihost->user_parameters.ssp_inactivity_timeout;
 }

 rnc->ssp.initial_arbitration_wait_time = 0;


 rnc->ssp.oaf_connection_rate = idev->connection_rate;
 rnc->ssp.oaf_features = 0;
 rnc->ssp.oaf_source_zone_group = 0;
 rnc->ssp.oaf_more_compatibility_features = 0;
}
