
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int * pers; } ;
struct md_rdev {int flags; } ;
typedef int dev_t ;


 int EBUSY ;
 int ENODEV ;
 int Faulty ;
 struct md_rdev* find_rdev_rcu (struct mddev*,int ) ;
 int md_error (struct mddev*,struct md_rdev*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int set_disk_faulty(struct mddev *mddev, dev_t dev)
{
 struct md_rdev *rdev;
 int err = 0;

 if (mddev->pers == ((void*)0))
  return -ENODEV;

 rcu_read_lock();
 rdev = find_rdev_rcu(mddev, dev);
 if (!rdev)
  err = -ENODEV;
 else {
  md_error(mddev, rdev);
  if (!test_bit(Faulty, &rdev->flags))
   err = -EBUSY;
 }
 rcu_read_unlock();
 return err;
}
