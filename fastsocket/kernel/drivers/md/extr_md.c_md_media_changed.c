
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int changed; } ;
struct gendisk {struct mddev* private_data; } ;



__attribute__((used)) static int md_media_changed(struct gendisk *disk)
{
 struct mddev *mddev = disk->private_data;

 return mddev->changed;
}
