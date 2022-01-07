
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int diag_dev; int diag_cdev; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int diagpkt_cdev ;
 int diagpkt_count ;
 int diagpkt_dev ;
 int ipath_cdev_cleanup (int *,int *) ;

void ipath_diag_remove(struct ipath_devdata *dd)
{
 if (atomic_dec_and_test(&diagpkt_count))
  ipath_cdev_cleanup(&diagpkt_cdev, &diagpkt_dev);

 ipath_cdev_cleanup(&dd->diag_cdev, &dd->diag_dev);
}
