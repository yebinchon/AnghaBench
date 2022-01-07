
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int openers; } ;
struct gendisk {struct mddev* private_data; } ;
typedef int fmode_t ;


 int BUG_ON (int) ;
 int atomic_dec (int *) ;
 int mddev_put (struct mddev*) ;

__attribute__((used)) static int md_release(struct gendisk *disk, fmode_t mode)
{
  struct mddev *mddev = disk->private_data;

 BUG_ON(!mddev);
 atomic_dec(&mddev->openers);
 mddev_put(mddev);

 return 0;
}
