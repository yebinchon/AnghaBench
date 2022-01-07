
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ macs_num; } ;
struct bnx2x_pending_mcast_cmd {int done; TYPE_1__ data; int type; } ;
struct bnx2x_mcast_obj {int max_cmd_len; int (* set_one_rule ) (struct bnx2x*,struct bnx2x_mcast_obj*,int,int *,int ) ;} ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*,scalar_t__,int) ;
 int stub1 (struct bnx2x*,struct bnx2x_mcast_obj*,int,int *,int ) ;

__attribute__((used)) static inline void bnx2x_mcast_hdl_pending_del_e2(struct bnx2x *bp,
 struct bnx2x_mcast_obj *o, struct bnx2x_pending_mcast_cmd *cmd_pos,
 int *line_idx)
{
 int cnt = *line_idx;

 while (cmd_pos->data.macs_num) {
  o->set_one_rule(bp, o, cnt, ((void*)0), cmd_pos->type);

  cnt++;

  cmd_pos->data.macs_num--;

    DP(BNX2X_MSG_SP, "Deleting MAC. %d left,cnt is %d\n",
       cmd_pos->data.macs_num, cnt);




  if (cnt >= o->max_cmd_len)
   break;
 }

 *line_idx = cnt;


 if (!cmd_pos->data.macs_num)
  cmd_pos->done = 1;
}
