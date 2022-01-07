
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EFAULT ;
 scalar_t__ copy_from_user (unsigned char*,char const*,int) ;
 int cpustate_set_state (unsigned char) ;

__attribute__((used)) static ssize_t cpustate_write(struct file *file, const char *buf,
         size_t count, loff_t * ppos)
{
 unsigned char data;

 if (count < 0)
  return -EFAULT;

 if (count == 0)
  return 0;

 if (copy_from_user((unsigned char *)&data, buf, sizeof(unsigned char)))
  return -EFAULT;

 cpustate_set_state(data);
 return sizeof(unsigned char);
}
