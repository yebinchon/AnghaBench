
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_volume_desc {TYPE_1__* vol; } ;
struct ubi_device {int ubi_num; } ;
struct file {struct ubi_volume_desc* private_data; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct ubi_device* ubi; } ;


 int ubi_sync (int ) ;

__attribute__((used)) static int vol_cdev_fsync(struct file *file, struct dentry *dentry,
     int datasync)
{
 struct ubi_volume_desc *desc = file->private_data;
 struct ubi_device *ubi = desc->vol->ubi;

 return ubi_sync(ubi->ubi_num);
}
