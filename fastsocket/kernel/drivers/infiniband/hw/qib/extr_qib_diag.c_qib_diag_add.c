
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int unit; int diag_device; int diag_cdev; } ;
typedef int name ;


 int QIB_DIAGPKT_MINOR ;
 int QIB_DIAG_MINOR_BASE ;
 int atomic_inc_return (int *) ;
 int diag_file_ops ;
 int diagpkt_cdev ;
 int diagpkt_count ;
 int diagpkt_device ;
 int diagpkt_file_ops ;
 int qib_cdev_init (int,char*,int *,int *,int *) ;
 int snprintf (char*,int,char*,int) ;

int qib_diag_add(struct qib_devdata *dd)
{
 char name[16];
 int ret = 0;

 if (atomic_inc_return(&diagpkt_count) == 1) {
  ret = qib_cdev_init(QIB_DIAGPKT_MINOR, "ipath_diagpkt",
        &diagpkt_file_ops, &diagpkt_cdev,
        &diagpkt_device);
  if (ret)
   goto done;
 }

 snprintf(name, sizeof(name), "ipath_diag%d", dd->unit);
 ret = qib_cdev_init(QIB_DIAG_MINOR_BASE + dd->unit, name,
       &diag_file_ops, &dd->diag_cdev,
       &dd->diag_device);
done:
 return ret;
}
