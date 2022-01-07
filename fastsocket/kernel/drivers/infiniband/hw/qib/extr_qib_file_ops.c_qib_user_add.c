
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int unit; int user_device; int user_cdev; } ;
typedef int name ;


 int atomic_inc_return (int *) ;
 int qib_cdev_init (int ,char*,int *,int *,int *) ;
 int qib_file_ops ;
 int qib_user_remove (struct qib_devdata*) ;
 int snprintf (char*,int,char*,int) ;
 int user_count ;
 int wildcard_cdev ;
 int wildcard_device ;

__attribute__((used)) static int qib_user_add(struct qib_devdata *dd)
{
 char name[10];
 int ret;

 if (atomic_inc_return(&user_count) == 1) {
  ret = qib_cdev_init(0, "ipath", &qib_file_ops,
        &wildcard_cdev, &wildcard_device);
  if (ret)
   goto done;
 }

 snprintf(name, sizeof(name), "ipath%d", dd->unit);
 ret = qib_cdev_init(dd->unit + 1, name, &qib_file_ops,
       &dd->user_cdev, &dd->user_device);
 if (ret)
  qib_user_remove(dd);
done:
 return ret;
}
