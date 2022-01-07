
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; } ;
union event_ring_elem {TYPE_1__ message; } ;
struct bnx2x_raw_obj {int (* clear_pending ) (struct bnx2x_raw_obj*) ;} ;
struct bnx2x_vlan_mac_obj {int exe_queue; struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;


 int EINVAL ;
 int RAMROD_CONT ;
 int bnx2x_exe_queue_empty (int *) ;
 int bnx2x_exe_queue_reset_pending (struct bnx2x*,int *) ;
 int bnx2x_exe_queue_step (struct bnx2x*,int *,unsigned long*) ;
 int stub1 (struct bnx2x_raw_obj*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static int bnx2x_complete_vlan_mac(struct bnx2x *bp,
       struct bnx2x_vlan_mac_obj *o,
       union event_ring_elem *cqe,
       unsigned long *ramrod_flags)
{
 struct bnx2x_raw_obj *r = &o->raw;
 int rc;


 bnx2x_exe_queue_reset_pending(bp, &o->exe_queue);


 r->clear_pending(r);


 if (cqe->message.error)
  return -EINVAL;


 if (test_bit(RAMROD_CONT, ramrod_flags)) {
  rc = bnx2x_exe_queue_step(bp, &o->exe_queue, ramrod_flags);
  if (rc < 0)
   return rc;
 }


 if (!bnx2x_exe_queue_empty(&o->exe_queue))
  return 1;

 return 0;
}
