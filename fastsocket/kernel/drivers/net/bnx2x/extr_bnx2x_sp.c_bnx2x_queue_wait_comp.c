
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_queue_sp_obj {int pending; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_queue_cmd { ____Placeholder_bnx2x_queue_cmd } bnx2x_queue_cmd ;


 int bnx2x_state_wait (struct bnx2x*,int,int *) ;

__attribute__((used)) static int bnx2x_queue_wait_comp(struct bnx2x *bp,
     struct bnx2x_queue_sp_obj *o,
     enum bnx2x_queue_cmd cmd)
{
 return bnx2x_state_wait(bp, cmd, &o->pending);
}
