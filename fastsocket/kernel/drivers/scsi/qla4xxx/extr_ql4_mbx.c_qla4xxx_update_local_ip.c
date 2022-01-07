
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* u6_addr8; } ;
struct TYPE_5__ {TYPE_1__ in6_u; } ;
struct TYPE_6__ {int* ip_address; int* subnet_mask; int* gateway; int ipv6_addr0; int ipv6_addr1; int ipv6_default_router_addr; void* ipv6_port; void* ipv6_vlan_tag; TYPE_2__ ipv6_link_local_addr; void* ipv6_default_router_state; void* ipv6_addr1_state; void* ipv6_addr0_state; void* ipv6_link_local_state; void* ipv4_vlan_tag; void* ipv6_addl_options; void* ipv6_options; void* ipv4_port; void* eth_mtu_size; void* ipv4_addr_state; void* ipv4_options; void* tcp_options; } ;
struct scsi_qla_host {scalar_t__ acb_version; TYPE_3__ ip_config; } ;
struct addr_ctrl_blk {int ipv6_port; int ipv6_vlan_tag; int ipv6_dflt_rtr_addr; int ipv6_addr1; int ipv6_addr0; int ipv6_if_id; int ipv6_dflt_rtr_state; int ipv6_addr1_state; int ipv6_addr0_state; int ipv6_lnk_lcl_addr_state; int ipv4_vlan_tag; int ipv4_gw_addr; int ipv4_subnet; int ipv4_addr; int ipv6_addtl_opts; int ipv6_opts; int ipv4_port; int eth_mtu_size; int ipv4_addr_state; int ipv4_ip_opts; int ipv4_tcp_opts; } ;


 scalar_t__ ACB_SUPPORTED ;
 void* be16_to_cpu (int ) ;
 scalar_t__ is_ipv6_enabled (struct scsi_qla_host*) ;
 void* le16_to_cpu (int ) ;
 int memcpy (int*,int ,int ) ;
 int min (int,int) ;

__attribute__((used)) static void
qla4xxx_update_local_ip(struct scsi_qla_host *ha,
   struct addr_ctrl_blk *init_fw_cb)
{
 ha->ip_config.tcp_options = le16_to_cpu(init_fw_cb->ipv4_tcp_opts);
 ha->ip_config.ipv4_options = le16_to_cpu(init_fw_cb->ipv4_ip_opts);
 ha->ip_config.ipv4_addr_state =
    le16_to_cpu(init_fw_cb->ipv4_addr_state);
 ha->ip_config.eth_mtu_size =
    le16_to_cpu(init_fw_cb->eth_mtu_size);
 ha->ip_config.ipv4_port = le16_to_cpu(init_fw_cb->ipv4_port);

 if (ha->acb_version == ACB_SUPPORTED) {
  ha->ip_config.ipv6_options = le16_to_cpu(init_fw_cb->ipv6_opts);
  ha->ip_config.ipv6_addl_options =
    le16_to_cpu(init_fw_cb->ipv6_addtl_opts);
 }


 memcpy(ha->ip_config.ip_address, init_fw_cb->ipv4_addr,
        min(sizeof(ha->ip_config.ip_address),
     sizeof(init_fw_cb->ipv4_addr)));
 memcpy(ha->ip_config.subnet_mask, init_fw_cb->ipv4_subnet,
        min(sizeof(ha->ip_config.subnet_mask),
     sizeof(init_fw_cb->ipv4_subnet)));
 memcpy(ha->ip_config.gateway, init_fw_cb->ipv4_gw_addr,
        min(sizeof(ha->ip_config.gateway),
     sizeof(init_fw_cb->ipv4_gw_addr)));

 ha->ip_config.ipv4_vlan_tag = be16_to_cpu(init_fw_cb->ipv4_vlan_tag);

 if (is_ipv6_enabled(ha)) {

  ha->ip_config.ipv6_link_local_state =
   le16_to_cpu(init_fw_cb->ipv6_lnk_lcl_addr_state);
  ha->ip_config.ipv6_addr0_state =
    le16_to_cpu(init_fw_cb->ipv6_addr0_state);
  ha->ip_config.ipv6_addr1_state =
    le16_to_cpu(init_fw_cb->ipv6_addr1_state);
  ha->ip_config.ipv6_default_router_state =
    le16_to_cpu(init_fw_cb->ipv6_dflt_rtr_state);
  ha->ip_config.ipv6_link_local_addr.in6_u.u6_addr8[0] = 0xFE;
  ha->ip_config.ipv6_link_local_addr.in6_u.u6_addr8[1] = 0x80;

  memcpy(&ha->ip_config.ipv6_link_local_addr.in6_u.u6_addr8[8],
         init_fw_cb->ipv6_if_id,
         min(sizeof(ha->ip_config.ipv6_link_local_addr)/2,
      sizeof(init_fw_cb->ipv6_if_id)));
  memcpy(&ha->ip_config.ipv6_addr0, init_fw_cb->ipv6_addr0,
         min(sizeof(ha->ip_config.ipv6_addr0),
      sizeof(init_fw_cb->ipv6_addr0)));
  memcpy(&ha->ip_config.ipv6_addr1, init_fw_cb->ipv6_addr1,
         min(sizeof(ha->ip_config.ipv6_addr1),
      sizeof(init_fw_cb->ipv6_addr1)));
  memcpy(&ha->ip_config.ipv6_default_router_addr,
         init_fw_cb->ipv6_dflt_rtr_addr,
         min(sizeof(ha->ip_config.ipv6_default_router_addr),
      sizeof(init_fw_cb->ipv6_dflt_rtr_addr)));
  ha->ip_config.ipv6_vlan_tag =
    be16_to_cpu(init_fw_cb->ipv6_vlan_tag);
  ha->ip_config.ipv6_port = le16_to_cpu(init_fw_cb->ipv6_port);
 }
}
