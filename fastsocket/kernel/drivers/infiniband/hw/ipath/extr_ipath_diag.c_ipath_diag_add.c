
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_unit; int diag_dev; int diag_cdev; } ;
typedef int name ;


 int IPATH_DIAGPKT_MINOR ;
 int IPATH_DIAG_MINOR_BASE ;
 int atomic_inc_return (int *) ;
 int diag_file_ops ;
 int diagpkt_cdev ;
 int diagpkt_count ;
 int diagpkt_dev ;
 int diagpkt_file_ops ;
 int ipath_cdev_init (int,char*,int *,int *,int *) ;
 int ipath_dev_err (struct ipath_devdata*,char*,...) ;
 int snprintf (char*,int,char*,int) ;

int ipath_diag_add(struct ipath_devdata *dd)
{
 char name[16];
 int ret = 0;

 if (atomic_inc_return(&diagpkt_count) == 1) {
  ret = ipath_cdev_init(IPATH_DIAGPKT_MINOR,
          "ipath_diagpkt", &diagpkt_file_ops,
          &diagpkt_cdev, &diagpkt_dev);

  if (ret) {
   ipath_dev_err(dd, "Couldn't create ipath_diagpkt "
          "device: %d", ret);
   goto done;
  }
 }

 snprintf(name, sizeof(name), "ipath_diag%d", dd->ipath_unit);

 ret = ipath_cdev_init(IPATH_DIAG_MINOR_BASE + dd->ipath_unit, name,
         &diag_file_ops, &dd->diag_cdev,
         &dd->diag_dev);
 if (ret)
  ipath_dev_err(dd, "Couldn't create %s device: %d",
         name, ret);

done:
 return ret;
}
