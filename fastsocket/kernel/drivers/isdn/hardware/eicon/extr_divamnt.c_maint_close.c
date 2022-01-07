
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int clear_bit (int ,int *) ;
 int diva_os_free (int ,int *) ;
 int opened ;

__attribute__((used)) static int maint_close(struct inode *ino, struct file *filep)
{
 if (filep->private_data) {
  diva_os_free(0, filep->private_data);
  filep->private_data = ((void*)0);
 }


 clear_bit(0, &opened);

 return (0);
}
