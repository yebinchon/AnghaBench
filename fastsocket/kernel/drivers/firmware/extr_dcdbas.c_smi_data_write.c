
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef scalar_t__ loff_t ;


 size_t EINVAL ;
 scalar_t__ MAX_SMI_DATA_BUF_SIZE ;
 int memcpy (scalar_t__,char*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ smi_data_buf ;
 size_t smi_data_buf_realloc (scalar_t__) ;
 int smi_data_lock ;

__attribute__((used)) static ssize_t smi_data_write(struct file *filp, struct kobject *kobj,
         struct bin_attribute *bin_attr,
         char *buf, loff_t pos, size_t count)
{
 ssize_t ret;

 if ((pos + count) > MAX_SMI_DATA_BUF_SIZE)
  return -EINVAL;

 mutex_lock(&smi_data_lock);

 ret = smi_data_buf_realloc(pos + count);
 if (ret)
  goto out;

 memcpy(smi_data_buf + pos, buf, count);
 ret = count;
out:
 mutex_unlock(&smi_data_lock);
 return ret;
}
