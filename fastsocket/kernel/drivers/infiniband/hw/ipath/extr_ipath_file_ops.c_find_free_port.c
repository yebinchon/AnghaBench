
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_user_info {int dummy; } ;
struct ipath_devdata {int ipath_cfgports; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ENETDOWN ;
 int ENODEV ;
 struct ipath_devdata* ipath_lookup (int) ;
 int try_alloc_port (struct ipath_devdata*,int,struct file*,struct ipath_user_info const*) ;
 int usable (struct ipath_devdata*) ;

__attribute__((used)) static int find_free_port(int unit, struct file *fp,
     const struct ipath_user_info *uinfo)
{
 struct ipath_devdata *dd = ipath_lookup(unit);
 int ret, i;

 if (!dd) {
  ret = -ENODEV;
  goto bail;
 }

 if (!usable(dd)) {
  ret = -ENETDOWN;
  goto bail;
 }

 for (i = 1; i < dd->ipath_cfgports; i++) {
  ret = try_alloc_port(dd, i, fp, uinfo);
  if (ret != -EBUSY)
   goto bail;
 }
 ret = -EBUSY;

bail:
 return ret;
}
