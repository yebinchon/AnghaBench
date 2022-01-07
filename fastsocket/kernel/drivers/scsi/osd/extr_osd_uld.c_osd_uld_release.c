
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_uld_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct osd_uld_device* private_data; } ;


 int OSD_DEBUG (char*,struct osd_uld_device*) ;
 int __uld_put (struct osd_uld_device*) ;

__attribute__((used)) static int osd_uld_release(struct inode *inode, struct file *file)
{
 struct osd_uld_device *oud = file->private_data;

 OSD_DEBUG("osd_uld_release %p\n", file->private_data);
 file->private_data = ((void*)0);
 __uld_put(oud);
 return 0;
}
