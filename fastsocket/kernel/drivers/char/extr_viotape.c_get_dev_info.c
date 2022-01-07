
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viot_devinfo_struct {int devno; int mode; int rewind; } ;
struct inode {int dummy; } ;


 int iminor (struct inode*) ;

void get_dev_info(struct inode *ino, struct viot_devinfo_struct *devi)
{
 devi->devno = iminor(ino) & 0x1F;
 devi->mode = (iminor(ino) & 0x60) >> 5;

 devi->rewind = (iminor(ino) & 0x80) == 0;
}
