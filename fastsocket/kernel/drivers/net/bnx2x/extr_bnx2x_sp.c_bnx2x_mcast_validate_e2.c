
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_mcast_ramrod_params {int mcast_list_len; struct bnx2x_mcast_obj* mcast_obj; } ;
struct bnx2x_mcast_obj {int (* get_registry_size ) (struct bnx2x_mcast_obj*) ;int total_pending_num; int (* set_registry_size ) (struct bnx2x_mcast_obj*,int) ;} ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_mcast_cmd { ____Placeholder_bnx2x_mcast_cmd } bnx2x_mcast_cmd ;


 int BNX2X_ERR (char*,int) ;




 int EINVAL ;
 int stub1 (struct bnx2x_mcast_obj*) ;
 int stub2 (struct bnx2x_mcast_obj*,int) ;
 int stub3 (struct bnx2x_mcast_obj*,int) ;

__attribute__((used)) static int bnx2x_mcast_validate_e2(struct bnx2x *bp,
       struct bnx2x_mcast_ramrod_params *p,
       enum bnx2x_mcast_cmd cmd)
{
 struct bnx2x_mcast_obj *o = p->mcast_obj;
 int reg_sz = o->get_registry_size(o);

 switch (cmd) {

 case 129:
  o->set_registry_size(o, 0);



 case 128:







  p->mcast_list_len = reg_sz;
  break;

 case 131:
 case 130:




  o->set_registry_size(o, reg_sz + p->mcast_list_len);
  break;

 default:
  BNX2X_ERR("Unknown command: %d\n", cmd);
  return -EINVAL;
 }


 o->total_pending_num += p->mcast_list_len;

 return 0;
}
