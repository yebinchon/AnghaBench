
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_uio_dev {int list; } ;


 int __cnic_free_uio (struct cnic_uio_dev*) ;
 int cnic_dev_lock ;
 int list_del_init (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void cnic_free_uio(struct cnic_uio_dev *udev)
{
 if (!udev)
  return;

 write_lock(&cnic_dev_lock);
 list_del_init(&udev->list);
 write_unlock(&cnic_dev_lock);
 __cnic_free_uio(udev);
}
