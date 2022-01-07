
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int dummy; } ;


 int ipath_dbg (char*) ;

__attribute__((used)) static int ipath_setup_ht_reset(struct ipath_devdata *dd)
{
 ipath_dbg("No reset possible for this InfiniPath hardware\n");
 return 0;
}
