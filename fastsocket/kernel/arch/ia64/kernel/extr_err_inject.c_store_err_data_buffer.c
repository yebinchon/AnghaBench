
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysdev_attribute {int dummy; } ;
struct sys_device {unsigned int id; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int data3; int data2; int data1; } ;


 size_t EINVAL ;
 int ERR_DATA_BUFFER_SIZE ;
 TYPE_1__* err_data_buffer ;
 int printk (char*,int ,int ,int ,unsigned int) ;
 int sscanf (char const*,char*,int *,int *,int *) ;

__attribute__((used)) static ssize_t
store_err_data_buffer(struct sys_device *dev,
   struct sysdev_attribute *attr,
   const char *buf, size_t size)
{
 unsigned int cpu=dev->id;
 int ret;
 ret=sscanf(buf, "%lx, %lx, %lx",
   &err_data_buffer[cpu].data1,
   &err_data_buffer[cpu].data2,
   &err_data_buffer[cpu].data3);
 if (ret!=ERR_DATA_BUFFER_SIZE)
  return -EINVAL;

 return size;
}
