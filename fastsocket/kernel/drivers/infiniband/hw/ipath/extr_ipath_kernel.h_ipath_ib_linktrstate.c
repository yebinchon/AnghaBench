
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ipath_devdata {int ibcs_lts_mask; } ;


 int INFINIPATH_IBCS_LINKTRAININGSTATE_SHIFT ;

__attribute__((used)) static inline u32 ipath_ib_linktrstate(struct ipath_devdata *dd, u64 ibcs)
{
 return (u32)(ibcs >> INFINIPATH_IBCS_LINKTRAININGSTATE_SHIFT) &
  dd->ibcs_lts_mask;
}
