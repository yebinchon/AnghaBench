
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct aoedev* private_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aoetgt {int addr; } ;
struct aoedev {struct aoetgt** targets; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct gendisk* dev_to_disk (struct device*) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t aoedisk_show_mac(struct device *dev,
    struct device_attribute *attr, char *page)
{
 struct gendisk *disk = dev_to_disk(dev);
 struct aoedev *d = disk->private_data;
 struct aoetgt *t = d->targets[0];

 if (t == ((void*)0))
  return snprintf(page, PAGE_SIZE, "none\n");
 return snprintf(page, PAGE_SIZE, "%pm\n", t->addr);
}
