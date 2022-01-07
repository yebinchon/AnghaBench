
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_func_sp_obj {int dummy; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_func_cmd { ____Placeholder_bnx2x_func_cmd } bnx2x_func_cmd ;


 int bnx2x_func_state_change_comp (struct bnx2x*,struct bnx2x_func_sp_obj*,int) ;

__attribute__((used)) static int bnx2x_func_comp_cmd(struct bnx2x *bp,
          struct bnx2x_func_sp_obj *o,
          enum bnx2x_func_cmd cmd)
{



 int rc = bnx2x_func_state_change_comp(bp, o, cmd);
 return rc;
}
