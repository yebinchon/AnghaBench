
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ changed; } ;
struct gendisk {struct mddev* private_data; } ;



__attribute__((used)) static int md_revalidate(struct gendisk *disk)
{
 struct mddev *mddev = disk->private_data;

 mddev->changed = 0;
 return 0;
}
