
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int memory_read_from_buffer (char*,size_t,int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smi_data_buf ;
 int smi_data_buf_size ;
 int smi_data_lock ;

__attribute__((used)) static ssize_t smi_data_read(struct file *filp, struct kobject *kobj,
        struct bin_attribute *bin_attr,
        char *buf, loff_t pos, size_t count)
{
 ssize_t ret;

 mutex_lock(&smi_data_lock);
 ret = memory_read_from_buffer(buf, count, &pos, smi_data_buf,
     smi_data_buf_size);
 mutex_unlock(&smi_data_lock);
 return ret;
}
