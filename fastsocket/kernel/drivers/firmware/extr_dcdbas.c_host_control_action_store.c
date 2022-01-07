
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct apm_cmd {int dummy; } ;
typedef size_t ssize_t ;


 int host_control_action ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 size_t smi_data_buf_realloc (int) ;
 int smi_data_lock ;

__attribute__((used)) static ssize_t host_control_action_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 ssize_t ret;


 mutex_lock(&smi_data_lock);
 ret = smi_data_buf_realloc(sizeof(struct apm_cmd));
 mutex_unlock(&smi_data_lock);
 if (ret)
  return ret;

 host_control_action = simple_strtoul(buf, ((void*)0), 10);
 return count;
}
