
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_file_private {int fasync_queue; } ;
struct file {struct ipmi_file_private* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int ipmi_fasync(int fd, struct file *file, int on)
{
 struct ipmi_file_private *priv = file->private_data;
 int result;

 lock_kernel();
 result = fasync_helper(fd, file, on, &priv->fasync_queue);
 unlock_kernel();

 return (result);
}
