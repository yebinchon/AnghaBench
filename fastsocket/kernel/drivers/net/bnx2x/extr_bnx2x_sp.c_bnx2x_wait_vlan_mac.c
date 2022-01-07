
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_raw_obj {int (* wait_comp ) (struct bnx2x*,struct bnx2x_raw_obj*) ;} ;
struct bnx2x_exe_queue_obj {int dummy; } ;
struct bnx2x_vlan_mac_obj {struct bnx2x_raw_obj raw; struct bnx2x_exe_queue_obj exe_queue; } ;
struct bnx2x {int dummy; } ;


 int EBUSY ;
 int bnx2x_exe_queue_empty (struct bnx2x_exe_queue_obj*) ;
 int stub1 (struct bnx2x*,struct bnx2x_raw_obj*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bnx2x_wait_vlan_mac(struct bnx2x *bp,
          struct bnx2x_vlan_mac_obj *o)
{
 int cnt = 5000, rc;
 struct bnx2x_exe_queue_obj *exeq = &o->exe_queue;
 struct bnx2x_raw_obj *raw = &o->raw;

 while (cnt--) {

  rc = raw->wait_comp(bp, raw);
  if (rc)
   return rc;


  if (!bnx2x_exe_queue_empty(exeq))
   usleep_range(1000, 2000);
  else
   return 0;
 }

 return -EBUSY;
}
