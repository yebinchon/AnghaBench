
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_devdata {int dummy; } ;


 int ipath_ib_linkstate (struct ipath_devdata*,int ) ;
 int ipath_ib_linktrstate (struct ipath_devdata*,int ) ;
 int ipath_setup_ht_setextled (struct ipath_devdata*,int ,int ) ;

__attribute__((used)) static int ipath_ht_ib_updown(struct ipath_devdata *dd, int ibup, u64 ibcs)
{
 ipath_setup_ht_setextled(dd, ipath_ib_linkstate(dd, ibcs),
  ipath_ib_linktrstate(dd, ibcs));
 return 0;
}
