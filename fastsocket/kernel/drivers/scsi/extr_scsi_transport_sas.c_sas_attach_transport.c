
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int match; int ** attrs; int * class; } ;
struct TYPE_10__ {TYPE_1__ ac; } ;
struct scsi_transport_template {int host_size; TYPE_2__ host_attrs; int user_scan; } ;
struct sas_internal {struct scsi_transport_template t; int ** expander_attrs; int ** end_dev_attrs; int ** rphy_attrs; int ** port_attrs; int ** phy_attrs; struct sas_function_template* f; TYPE_2__ expander_attr_cont; TYPE_2__ end_dev_attr_cont; TYPE_2__ rphy_attr_cont; TYPE_2__ port_attr_cont; TYPE_2__ phy_attr_cont; int ** host_attrs; } ;
struct sas_host_attrs {int dummy; } ;
struct sas_function_template {int dummy; } ;
struct TYPE_16__ {int class; } ;
struct TYPE_15__ {int class; } ;
struct TYPE_14__ {int class; } ;
struct TYPE_13__ {int class; } ;
struct TYPE_12__ {int class; } ;
struct TYPE_11__ {int class; } ;


 int GFP_KERNEL ;
 int SETUP_END_DEV_ATTRIBUTE (int ) ;
 int SETUP_EXPANDER_ATTRIBUTE (int ) ;
 int SETUP_OPTIONAL_PHY_ATTRIBUTE_RW (int ,int ) ;
 int SETUP_OPTIONAL_PHY_ATTRIBUTE_WRONLY (int ,int ) ;
 int SETUP_OPTIONAL_RPORT_ATTRIBUTE (int ,int ) ;
 int SETUP_PHY_ATTRIBUTE (int ) ;
 int SETUP_PHY_ATTRIBUTE_RW (int ) ;
 int SETUP_PORT_ATTRIBUTE (int ) ;
 int SETUP_RPORT_ATTRIBUTE (int ) ;
 int component_id ;
 int component_revision_id ;
 int component_vendor_id ;
 int device_type ;
 int enable ;
 int end_dev_I_T_nexus_loss_timeout ;
 int end_dev_initiator_response_timeout ;
 int end_dev_ready_led_meaning ;
 int end_dev_tlr_enabled ;
 int end_dev_tlr_supported ;
 int get_bay_identifier ;
 int get_enclosure_identifier ;
 int hard_reset ;
 int initiator_port_protocols ;
 int invalid_dword_count ;
 struct sas_internal* kzalloc (int,int ) ;
 int level ;
 int link_reset ;
 int loss_of_dword_sync_count ;
 int maximum_linkrate ;
 int maximum_linkrate_hw ;
 int minimum_linkrate ;
 int minimum_linkrate_hw ;
 int negotiated_linkrate ;
 int num_phys ;
 int phy_enable ;
 int phy_identifier ;
 int phy_reset ;
 int phy_reset_problem_count ;
 int product_id ;
 int product_rev ;
 int rphy_bay_identifier ;
 int rphy_device_type ;
 int rphy_enclosure_identifier ;
 int rphy_initiator_port_protocols ;
 int rphy_phy_identifier ;
 int rphy_sas_address ;
 int rphy_target_port_protocols ;
 int running_disparity_error_count ;
 int sas_address ;
 TYPE_8__ sas_end_dev_class ;
 int sas_end_dev_match ;
 TYPE_7__ sas_expander_class ;
 int sas_expander_match ;
 TYPE_6__ sas_host_class ;
 int sas_host_match ;
 TYPE_5__ sas_phy_class ;
 int sas_phy_match ;
 TYPE_4__ sas_port_class ;
 int sas_port_match ;
 TYPE_3__ sas_rphy_class ;
 int sas_rphy_match ;
 int sas_user_scan ;
 int target_port_protocols ;
 int transport_container_register (TYPE_2__*) ;
 int vendor_id ;

struct scsi_transport_template *
sas_attach_transport(struct sas_function_template *ft)
{
 struct sas_internal *i;
 int count;

 i = kzalloc(sizeof(struct sas_internal), GFP_KERNEL);
 if (!i)
  return ((void*)0);

 i->t.user_scan = sas_user_scan;

 i->t.host_attrs.ac.attrs = &i->host_attrs[0];
 i->t.host_attrs.ac.class = &sas_host_class.class;
 i->t.host_attrs.ac.match = sas_host_match;
 transport_container_register(&i->t.host_attrs);
 i->t.host_size = sizeof(struct sas_host_attrs);

 i->phy_attr_cont.ac.class = &sas_phy_class.class;
 i->phy_attr_cont.ac.attrs = &i->phy_attrs[0];
 i->phy_attr_cont.ac.match = sas_phy_match;
 transport_container_register(&i->phy_attr_cont);

 i->port_attr_cont.ac.class = &sas_port_class.class;
 i->port_attr_cont.ac.attrs = &i->port_attrs[0];
 i->port_attr_cont.ac.match = sas_port_match;
 transport_container_register(&i->port_attr_cont);

 i->rphy_attr_cont.ac.class = &sas_rphy_class.class;
 i->rphy_attr_cont.ac.attrs = &i->rphy_attrs[0];
 i->rphy_attr_cont.ac.match = sas_rphy_match;
 transport_container_register(&i->rphy_attr_cont);

 i->end_dev_attr_cont.ac.class = &sas_end_dev_class.class;
 i->end_dev_attr_cont.ac.attrs = &i->end_dev_attrs[0];
 i->end_dev_attr_cont.ac.match = sas_end_dev_match;
 transport_container_register(&i->end_dev_attr_cont);

 i->expander_attr_cont.ac.class = &sas_expander_class.class;
 i->expander_attr_cont.ac.attrs = &i->expander_attrs[0];
 i->expander_attr_cont.ac.match = sas_expander_match;
 transport_container_register(&i->expander_attr_cont);

 i->f = ft;

 count = 0;
 SETUP_PHY_ATTRIBUTE(initiator_port_protocols);
 SETUP_PHY_ATTRIBUTE(target_port_protocols);
 SETUP_PHY_ATTRIBUTE(device_type);
 SETUP_PHY_ATTRIBUTE(sas_address);
 SETUP_PHY_ATTRIBUTE(phy_identifier);

 SETUP_PHY_ATTRIBUTE(negotiated_linkrate);
 SETUP_PHY_ATTRIBUTE(minimum_linkrate_hw);
 SETUP_PHY_ATTRIBUTE_RW(minimum_linkrate);
 SETUP_PHY_ATTRIBUTE(maximum_linkrate_hw);
 SETUP_PHY_ATTRIBUTE_RW(maximum_linkrate);

 SETUP_PHY_ATTRIBUTE(invalid_dword_count);
 SETUP_PHY_ATTRIBUTE(running_disparity_error_count);
 SETUP_PHY_ATTRIBUTE(loss_of_dword_sync_count);
 SETUP_PHY_ATTRIBUTE(phy_reset_problem_count);
 SETUP_OPTIONAL_PHY_ATTRIBUTE_WRONLY(link_reset, phy_reset);
 SETUP_OPTIONAL_PHY_ATTRIBUTE_WRONLY(hard_reset, phy_reset);
 SETUP_OPTIONAL_PHY_ATTRIBUTE_RW(enable, phy_enable);
 i->phy_attrs[count] = ((void*)0);

 count = 0;
 SETUP_PORT_ATTRIBUTE(num_phys);
 i->port_attrs[count] = ((void*)0);

 count = 0;
 SETUP_RPORT_ATTRIBUTE(rphy_initiator_port_protocols);
 SETUP_RPORT_ATTRIBUTE(rphy_target_port_protocols);
 SETUP_RPORT_ATTRIBUTE(rphy_device_type);
 SETUP_RPORT_ATTRIBUTE(rphy_sas_address);
 SETUP_RPORT_ATTRIBUTE(rphy_phy_identifier);
 SETUP_OPTIONAL_RPORT_ATTRIBUTE(rphy_enclosure_identifier,
           get_enclosure_identifier);
 SETUP_OPTIONAL_RPORT_ATTRIBUTE(rphy_bay_identifier,
           get_bay_identifier);
 i->rphy_attrs[count] = ((void*)0);

 count = 0;
 SETUP_END_DEV_ATTRIBUTE(end_dev_ready_led_meaning);
 SETUP_END_DEV_ATTRIBUTE(end_dev_I_T_nexus_loss_timeout);
 SETUP_END_DEV_ATTRIBUTE(end_dev_initiator_response_timeout);
 SETUP_END_DEV_ATTRIBUTE(end_dev_tlr_supported);
 SETUP_END_DEV_ATTRIBUTE(end_dev_tlr_enabled);
 i->end_dev_attrs[count] = ((void*)0);

 count = 0;
 SETUP_EXPANDER_ATTRIBUTE(vendor_id);
 SETUP_EXPANDER_ATTRIBUTE(product_id);
 SETUP_EXPANDER_ATTRIBUTE(product_rev);
 SETUP_EXPANDER_ATTRIBUTE(component_vendor_id);
 SETUP_EXPANDER_ATTRIBUTE(component_id);
 SETUP_EXPANDER_ATTRIBUTE(component_revision_id);
 SETUP_EXPANDER_ATTRIBUTE(level);
 i->expander_attrs[count] = ((void*)0);

 return &i->t;
}
