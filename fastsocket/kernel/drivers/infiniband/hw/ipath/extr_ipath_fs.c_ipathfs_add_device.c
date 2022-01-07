
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int dummy; } ;


 int create_device_files (int *,struct ipath_devdata*) ;
 int * ipath_super ;

int ipathfs_add_device(struct ipath_devdata *dd)
{
 int ret;

 if (ipath_super == ((void*)0)) {
  ret = 0;
  goto bail;
 }

 ret = create_device_files(ipath_super, dd);

bail:
 return ret;
}
