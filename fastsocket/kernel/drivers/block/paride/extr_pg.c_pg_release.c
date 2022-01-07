
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg {int access; int * bufptr; } ;
struct inode {int dummy; } ;
struct file {struct pg* private_data; } ;


 int clear_bit (int ,int *) ;
 int kfree (int *) ;

__attribute__((used)) static int pg_release(struct inode *inode, struct file *file)
{
 struct pg *dev = file->private_data;

 kfree(dev->bufptr);
 dev->bufptr = ((void*)0);
 clear_bit(0, &dev->access);

 return 0;
}
