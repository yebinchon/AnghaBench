
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysdev_attribute {int dummy; } ;
struct sys_device {unsigned int id; } ;
typedef int ssize_t ;
struct TYPE_2__ {int data3; int data2; int data1; } ;


 TYPE_1__* err_data_buffer ;
 int sprintf (char*,char*,int ,int ,int ) ;

__attribute__((used)) static ssize_t
show_err_data_buffer(struct sys_device *dev,
   struct sysdev_attribute *attr, char *buf)
{
 unsigned int cpu=dev->id;

 return sprintf(buf, "%lx, %lx, %lx\n",
   err_data_buffer[cpu].data1,
   err_data_buffer[cpu].data2,
   err_data_buffer[cpu].data3);
}
