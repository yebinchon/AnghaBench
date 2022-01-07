
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct ipath_devdata {scalar_t__ ib_init; scalar_t__ ib_arm; scalar_t__ ib_active; } ;


 scalar_t__ ipath_ib_state (struct ipath_devdata*,int ) ;

__attribute__((used)) static char *ib_linkstate(struct ipath_devdata *dd, u64 ibcs)
{
 char *ret;
 u32 state;

 state = ipath_ib_state(dd, ibcs);
 if (state == dd->ib_init)
  ret = "Init";
 else if (state == dd->ib_arm)
  ret = "Arm";
 else if (state == dd->ib_active)
  ret = "Active";
 else
  ret = "Down";
 return ret;
}
