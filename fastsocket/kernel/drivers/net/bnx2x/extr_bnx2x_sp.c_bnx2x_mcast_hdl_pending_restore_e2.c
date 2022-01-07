
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next_bin; } ;
struct bnx2x_pending_mcast_cmd {int done; TYPE_1__ data; } ;
struct bnx2x_mcast_obj {scalar_t__ (* hdl_restore ) (struct bnx2x*,struct bnx2x_mcast_obj*,scalar_t__,int*) ;} ;
struct bnx2x {int dummy; } ;


 scalar_t__ stub1 (struct bnx2x*,struct bnx2x_mcast_obj*,scalar_t__,int*) ;

__attribute__((used)) static inline void bnx2x_mcast_hdl_pending_restore_e2(struct bnx2x *bp,
 struct bnx2x_mcast_obj *o, struct bnx2x_pending_mcast_cmd *cmd_pos,
 int *line_idx)
{
 cmd_pos->data.next_bin = o->hdl_restore(bp, o, cmd_pos->data.next_bin,
      line_idx);

 if (cmd_pos->data.next_bin < 0)

  cmd_pos->done = 1;
 else

  cmd_pos->data.next_bin++;
}
