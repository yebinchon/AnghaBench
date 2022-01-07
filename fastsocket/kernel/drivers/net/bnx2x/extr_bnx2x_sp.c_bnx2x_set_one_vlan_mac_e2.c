
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* inner_mac; int mac_lsb; int mac_mid; int mac_msb; void* vlan; int header; } ;
union eth_classify_rule_cmd {TYPE_1__ pair; } ;
typedef int u8 ;
typedef int u16 ;
struct eth_classify_rules_ramrod_data {int header; union eth_classify_rule_cmd* rules; } ;
struct bnx2x_raw_obj {int state; int cid; scalar_t__ rdata; } ;
struct bnx2x_vlan_mac_obj {struct bnx2x_raw_obj raw; } ;
struct TYPE_7__ {int is_inner_mac; int * mac; int vlan; } ;
struct TYPE_8__ {TYPE_2__ vlan_mac; } ;
struct TYPE_9__ {int cmd; TYPE_3__ u; struct bnx2x_vlan_mac_obj* target_obj; } ;
struct TYPE_10__ {TYPE_4__ vlan_mac; } ;
struct bnx2x_exeq_elem {TYPE_5__ cmd_data; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_vlan_mac_cmd { ____Placeholder_bnx2x_vlan_mac_cmd } bnx2x_vlan_mac_cmd ;


 int BNX2X_VLAN_MAC_ADD ;
 int BNX2X_VLAN_MAC_MOVE ;
 int CLASSIFY_RULE_OPCODE_PAIR ;
 int bnx2x_set_fw_mac_addr (int *,int *,int *,int *) ;
 int bnx2x_vlan_mac_set_cmd_hdr_e2 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,int,int ,int *) ;
 int bnx2x_vlan_mac_set_rdata_hdr_e2 (int ,int ,int *,int) ;
 void* cpu_to_le16 (int ) ;
 int memset (struct eth_classify_rules_ramrod_data*,int ,int) ;

__attribute__((used)) static void bnx2x_set_one_vlan_mac_e2(struct bnx2x *bp,
          struct bnx2x_vlan_mac_obj *o,
          struct bnx2x_exeq_elem *elem,
          int rule_idx, int cam_offset)
{
 struct bnx2x_raw_obj *raw = &o->raw;
 struct eth_classify_rules_ramrod_data *data =
  (struct eth_classify_rules_ramrod_data *)(raw->rdata);
 int rule_cnt = rule_idx + 1;
 union eth_classify_rule_cmd *rule_entry = &data->rules[rule_idx];
 enum bnx2x_vlan_mac_cmd cmd = elem->cmd_data.vlan_mac.cmd;
 bool add = (cmd == BNX2X_VLAN_MAC_ADD) ? 1 : 0;
 u16 vlan = elem->cmd_data.vlan_mac.u.vlan_mac.vlan;
 u8 *mac = elem->cmd_data.vlan_mac.u.vlan_mac.mac;


 if (rule_idx == 0)
  memset(data, 0, sizeof(*data));


 bnx2x_vlan_mac_set_cmd_hdr_e2(bp, o, add, CLASSIFY_RULE_OPCODE_PAIR,
          &rule_entry->pair.header);


 rule_entry->pair.vlan = cpu_to_le16(vlan);
 bnx2x_set_fw_mac_addr(&rule_entry->pair.mac_msb,
         &rule_entry->pair.mac_mid,
         &rule_entry->pair.mac_lsb, mac);
 rule_entry->pair.inner_mac =
  cpu_to_le16(elem->cmd_data.vlan_mac.u.vlan_mac.is_inner_mac);

 if (cmd == BNX2X_VLAN_MAC_MOVE) {
  rule_entry++;
  rule_cnt++;


  bnx2x_vlan_mac_set_cmd_hdr_e2(bp,
     elem->cmd_data.vlan_mac.target_obj,
           1, CLASSIFY_RULE_OPCODE_PAIR,
           &rule_entry->pair.header);


  rule_entry->pair.vlan = cpu_to_le16(vlan);
  bnx2x_set_fw_mac_addr(&rule_entry->pair.mac_msb,
          &rule_entry->pair.mac_mid,
          &rule_entry->pair.mac_lsb, mac);
  rule_entry->pair.inner_mac =
   cpu_to_le16(elem->cmd_data.vlan_mac.u.
      vlan_mac.is_inner_mac);
 }




 bnx2x_vlan_mac_set_rdata_hdr_e2(raw->cid, raw->state, &data->header,
     rule_cnt);
}
