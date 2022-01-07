
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eth_multicast_rules_ramrod_data {int dummy; } ;
struct bnx2x_raw_obj {int rdata_mapping; int cid; int (* clear_pending ) (struct bnx2x_raw_obj*) ;scalar_t__ rdata; } ;
struct bnx2x_mcast_ramrod_params {scalar_t__ mcast_list_len; int ramrod_flags; struct bnx2x_mcast_obj* mcast_obj; } ;
struct bnx2x_mcast_obj {scalar_t__ total_pending_num; int max_cmd_len; int (* clear_sched ) (struct bnx2x_mcast_obj*) ;int pending_cmds_head; struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_mcast_cmd { ____Placeholder_bnx2x_mcast_cmd } bnx2x_mcast_cmd ;


 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_MULTICAST_RULES ;
 int RAMROD_DRV_CLR_ONLY ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int WARN_ON (int) ;
 int bnx2x_mcast_handle_current_cmd (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int,int) ;
 int bnx2x_mcast_handle_pending_cmds_e2 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*) ;
 int bnx2x_mcast_refresh_registry_e2 (struct bnx2x*,struct bnx2x_mcast_obj*) ;
 int bnx2x_mcast_set_rdata_hdr_e2 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int ) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 scalar_t__ list_empty (int *) ;
 int memset (struct eth_multicast_rules_ramrod_data*,int ,int) ;
 int stub1 (struct bnx2x_mcast_obj*) ;
 int stub2 (struct bnx2x_raw_obj*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int bnx2x_mcast_setup_e2(struct bnx2x *bp,
    struct bnx2x_mcast_ramrod_params *p,
    enum bnx2x_mcast_cmd cmd)
{
 struct bnx2x_raw_obj *raw = &p->mcast_obj->raw;
 struct bnx2x_mcast_obj *o = p->mcast_obj;
 struct eth_multicast_rules_ramrod_data *data =
  (struct eth_multicast_rules_ramrod_data *)(raw->rdata);
 int cnt = 0, rc;


 memset(data, 0, sizeof(*data));

 cnt = bnx2x_mcast_handle_pending_cmds_e2(bp, p);


 if (list_empty(&o->pending_cmds_head))
  o->clear_sched(o);







 if (p->mcast_list_len > 0)
  cnt = bnx2x_mcast_handle_current_cmd(bp, p, cmd, cnt);




 o->total_pending_num -= cnt;


 WARN_ON(o->total_pending_num < 0);
 WARN_ON(cnt > o->max_cmd_len);

 bnx2x_mcast_set_rdata_hdr_e2(bp, p, (u8)cnt);
 if (!o->total_pending_num)
  bnx2x_mcast_refresh_registry_e2(bp, o);




 if (test_bit(RAMROD_DRV_CLR_ONLY, &p->ramrod_flags)) {
  raw->clear_pending(raw);
  return 0;
 } else {
  rc = bnx2x_sp_post(bp, RAMROD_CMD_ID_ETH_MULTICAST_RULES,
       raw->cid, U64_HI(raw->rdata_mapping),
       U64_LO(raw->rdata_mapping),
       ETH_CONNECTION_TYPE);
  if (rc)
   return rc;


  return 1;
 }
}
