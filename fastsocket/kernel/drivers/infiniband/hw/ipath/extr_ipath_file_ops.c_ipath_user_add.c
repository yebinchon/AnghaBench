
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_unit; int user_dev; int user_cdev; } ;
typedef int name ;


 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 int init_cdev (int ,char*,int *,int *,int *) ;
 int ipath_dev_err (struct ipath_devdata*,char*,int,...) ;
 int ipath_file_ops ;
 int snprintf (char*,int,char*,int) ;
 int user_cleanup () ;
 int user_count ;
 int user_init () ;
 int user_setup ;
 int wildcard_cdev ;
 int wildcard_dev ;

int ipath_user_add(struct ipath_devdata *dd)
{
 char name[10];
 int ret;

 if (atomic_inc_return(&user_count) == 1) {
  ret = user_init();
  if (ret < 0) {
   ipath_dev_err(dd, "Unable to set up user support: "
          "error %d\n", -ret);
   goto bail;
  }
  ret = init_cdev(0, "ipath", &ipath_file_ops, &wildcard_cdev,
    &wildcard_dev);
  if (ret < 0) {
   ipath_dev_err(dd, "Could not create wildcard "
          "minor: error %d\n", -ret);
   goto bail_user;
  }

  atomic_set(&user_setup, 1);
 }

 snprintf(name, sizeof(name), "ipath%d", dd->ipath_unit);

 ret = init_cdev(dd->ipath_unit + 1, name, &ipath_file_ops,
   &dd->user_cdev, &dd->user_dev);
 if (ret < 0)
  ipath_dev_err(dd, "Could not create user minor %d, %s\n",
         dd->ipath_unit + 1, name);

 goto bail;

bail_user:
 user_cleanup();
bail:
 return ret;
}
