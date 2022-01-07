
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_2__ {int device; } ;
typedef TYPE_1__ scsi_changer ;


 int scsi_device_put (int ) ;

__attribute__((used)) static int
ch_release(struct inode *inode, struct file *file)
{
 scsi_changer *ch = file->private_data;

 scsi_device_put(ch->device);
 file->private_data = ((void*)0);
 return 0;
}
