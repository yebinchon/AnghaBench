
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_raw_obj {int (* clear_pending ) (struct bnx2x_raw_obj*) ;int (* set_pending ) (struct bnx2x_raw_obj*) ;scalar_t__ (* check_pending ) (struct bnx2x_raw_obj*) ;} ;
struct bnx2x_mcast_ramrod_params {int ramrod_flags; int mcast_list_len; struct bnx2x_mcast_obj* mcast_obj; } ;
struct bnx2x_mcast_obj {int (* get_registry_size ) (struct bnx2x_mcast_obj*) ;int (* validate ) (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int) ;scalar_t__ total_pending_num; scalar_t__ max_cmd_len; int (* enqueue_cmd ) (struct bnx2x*,struct bnx2x_mcast_obj*,struct bnx2x_mcast_ramrod_params*,int) ;int (* config_mcast ) (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int) ;int (* wait_comp ) (struct bnx2x*,struct bnx2x_mcast_obj*) ;int (* revert ) (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int) ;int (* check_sched ) (struct bnx2x_mcast_obj*) ;struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_mcast_cmd { ____Placeholder_bnx2x_mcast_cmd } bnx2x_mcast_cmd ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*,scalar_t__,int ,scalar_t__) ;
 int RAMROD_COMP_WAIT ;
 int stub1 (struct bnx2x_mcast_obj*) ;
 int stub10 (struct bnx2x_raw_obj*) ;
 int stub11 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int) ;
 int stub2 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int) ;
 int stub3 (struct bnx2x_mcast_obj*) ;
 scalar_t__ stub4 (struct bnx2x_raw_obj*) ;
 int stub5 (struct bnx2x*,struct bnx2x_mcast_obj*,struct bnx2x_mcast_ramrod_params*,int) ;
 scalar_t__ stub6 (struct bnx2x_raw_obj*) ;
 int stub7 (struct bnx2x_raw_obj*) ;
 int stub8 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int) ;
 int stub9 (struct bnx2x*,struct bnx2x_mcast_obj*) ;
 scalar_t__ test_bit (int ,int *) ;

int bnx2x_config_mcast(struct bnx2x *bp,
         struct bnx2x_mcast_ramrod_params *p,
         enum bnx2x_mcast_cmd cmd)
{
 struct bnx2x_mcast_obj *o = p->mcast_obj;
 struct bnx2x_raw_obj *r = &o->raw;
 int rc = 0, old_reg_size;




 old_reg_size = o->get_registry_size(o);


 rc = o->validate(bp, p, cmd);
 if (rc)
  return rc;


 if ((!p->mcast_list_len) && (!o->check_sched(o)))
  return 0;

 DP(BNX2X_MSG_SP, "o->total_pending_num=%d p->mcast_list_len=%d o->max_cmd_len=%d\n",
    o->total_pending_num, p->mcast_list_len, o->max_cmd_len);




 if (r->check_pending(r) ||
     ((o->max_cmd_len > 0) && (o->total_pending_num > o->max_cmd_len))) {
  rc = o->enqueue_cmd(bp, p->mcast_obj, p, cmd);
  if (rc < 0)
   goto error_exit1;




  p->mcast_list_len = 0;
 }

 if (!r->check_pending(r)) {


  r->set_pending(r);


  rc = o->config_mcast(bp, p, cmd);
  if (rc < 0)
   goto error_exit2;


  if (test_bit(RAMROD_COMP_WAIT, &p->ramrod_flags))
   rc = o->wait_comp(bp, o);
 }

 return rc;

error_exit2:
 r->clear_pending(r);

error_exit1:
 o->revert(bp, p, old_reg_size);

 return rc;
}
