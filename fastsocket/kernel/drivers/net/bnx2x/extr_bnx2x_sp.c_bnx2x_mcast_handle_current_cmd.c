
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_mcast_ramrod_params {scalar_t__ mcast_list_len; struct bnx2x_mcast_obj* mcast_obj; } ;
struct bnx2x_mcast_obj {int (* hdl_restore ) (struct bnx2x*,struct bnx2x_mcast_obj*,int ,int*) ;} ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_mcast_cmd { ____Placeholder_bnx2x_mcast_cmd } bnx2x_mcast_cmd ;


 int BNX2X_ERR (char*,int) ;



 int BNX2X_MSG_SP ;
 int DP (int ,char*,scalar_t__) ;
 int EINVAL ;
 int bnx2x_mcast_hdl_add (struct bnx2x*,struct bnx2x_mcast_obj*,struct bnx2x_mcast_ramrod_params*,int*) ;
 int bnx2x_mcast_hdl_del (struct bnx2x*,struct bnx2x_mcast_obj*,struct bnx2x_mcast_ramrod_params*,int*) ;
 int stub1 (struct bnx2x*,struct bnx2x_mcast_obj*,int ,int*) ;

__attribute__((used)) static inline int bnx2x_mcast_handle_current_cmd(struct bnx2x *bp,
   struct bnx2x_mcast_ramrod_params *p,
   enum bnx2x_mcast_cmd cmd,
   int start_cnt)
{
 struct bnx2x_mcast_obj *o = p->mcast_obj;
 int cnt = start_cnt;

 DP(BNX2X_MSG_SP, "p->mcast_list_len=%d\n", p->mcast_list_len);

 switch (cmd) {
 case 130:
  bnx2x_mcast_hdl_add(bp, o, p, &cnt);
  break;

 case 129:
  bnx2x_mcast_hdl_del(bp, o, p, &cnt);
  break;

 case 128:
  o->hdl_restore(bp, o, 0, &cnt);
  break;

 default:
  BNX2X_ERR("Unknown command: %d\n", cmd);
  return -EINVAL;
 }


 p->mcast_list_len = 0;

 return cnt;
}
