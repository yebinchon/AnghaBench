
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;
struct capidev {int dummy; } ;


 int capidev_free (struct capidev*) ;

__attribute__((used)) static int
capi_release(struct inode *inode, struct file *file)
{
 struct capidev *cdev = (struct capidev *)file->private_data;

 capidev_free(cdev);
 file->private_data = ((void*)0);

 return 0;
}
