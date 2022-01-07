
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_devdata {int ipath_flags; } ;
typedef int ipath_err_t ;


 int E_SUM_LINK_PKTERRS ;
 int IPATH_LINKACTIVE ;
 int ipath_dbg (char*,unsigned long long) ;
 int ipath_disarm_senderrbufs (struct ipath_devdata*) ;

__attribute__((used)) static u64 handle_e_sum_errs(struct ipath_devdata *dd, ipath_err_t errs)
{
 u64 ignore_this_time = 0;

 ipath_disarm_senderrbufs(dd);
 if ((errs & E_SUM_LINK_PKTERRS) &&
     !(dd->ipath_flags & IPATH_LINKACTIVE)) {







  ipath_dbg("Ignoring packet errors %llx, because link not "
     "ACTIVE\n", (unsigned long long) errs);
  ignore_this_time = errs & E_SUM_LINK_PKTERRS;
 }

 return ignore_this_time;
}
