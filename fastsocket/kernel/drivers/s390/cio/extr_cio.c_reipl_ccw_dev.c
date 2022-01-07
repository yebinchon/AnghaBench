
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct ccw_dev_id {int dummy; } ;
typedef int __u32 ;


 int do_reipl_asm (int ) ;
 int panic (char*) ;
 scalar_t__ reipl_find_schid (struct ccw_dev_id*,struct subchannel_id*) ;
 int s390_reset_system (int *,int *) ;

void reipl_ccw_dev(struct ccw_dev_id *devid)
{
 struct subchannel_id schid;

 s390_reset_system(((void*)0), ((void*)0));
 if (reipl_find_schid(devid, &schid) != 0)
  panic("IPL Device not found\n");
 do_reipl_asm(*((__u32*)&schid));
}
