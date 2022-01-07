
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int user_dev; int user_cdev; } ;


 scalar_t__ atomic_dec_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cleanup_cdev (int *,int *) ;
 int user_cleanup () ;
 int user_count ;
 int user_setup ;
 int wildcard_cdev ;
 int wildcard_dev ;

void ipath_user_remove(struct ipath_devdata *dd)
{
 cleanup_cdev(&dd->user_cdev, &dd->user_dev);

 if (atomic_dec_return(&user_count) == 0) {
  if (atomic_read(&user_setup) == 0)
   goto bail;

  cleanup_cdev(&wildcard_cdev, &wildcard_dev);
  user_cleanup();

  atomic_set(&user_setup, 0);
 }
bail:
 return;
}
