
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BUILD_BUG_ON (int) ;
 int EIO ;
 size_t PAGE_SIZE ;
 size_t VIRTIO_BLK_ID_BYTES ;
 struct gendisk* dev_to_disk (struct device*) ;
 int strlen (char*) ;
 int virtblk_get_id (struct gendisk*,char*) ;

__attribute__((used)) static ssize_t virtblk_serial_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct gendisk *disk = dev_to_disk(dev);
 int err;


 BUILD_BUG_ON(PAGE_SIZE < VIRTIO_BLK_ID_BYTES);

 buf[VIRTIO_BLK_ID_BYTES] = '\0';
 err = virtblk_get_id(disk, buf);
 if (!err)
  return strlen(buf);

 if (err == -EIO)
  return 0;

 return err;
}
