
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int IPL_PARMBLOCK_SIZE ;
 int IPL_PARMBLOCK_START ;
 int memory_read_from_buffer (char*,size_t,int *,int ,int ) ;

__attribute__((used)) static ssize_t ipl_parameter_read(struct file *filp, struct kobject *kobj,
      struct bin_attribute *attr, char *buf,
      loff_t off, size_t count)
{
 return memory_read_from_buffer(buf, count, &off, IPL_PARMBLOCK_START,
     IPL_PARMBLOCK_SIZE);
}
