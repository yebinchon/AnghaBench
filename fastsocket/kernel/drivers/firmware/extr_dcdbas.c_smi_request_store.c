
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smi_cmd {int command_buffer; int ebx; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENODEV ;
 size_t dcdbas_smi_request (struct smi_cmd*) ;
 int memset (scalar_t__,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 scalar_t__ smi_data_buf ;
 int smi_data_buf_size ;
 int smi_data_lock ;
 int virt_to_phys (int ) ;

__attribute__((used)) static ssize_t smi_request_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct smi_cmd *smi_cmd;
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);
 ssize_t ret;

 mutex_lock(&smi_data_lock);

 if (smi_data_buf_size < sizeof(struct smi_cmd)) {
  ret = -ENODEV;
  goto out;
 }
 smi_cmd = (struct smi_cmd *)smi_data_buf;

 switch (val) {
 case 2:

  ret = dcdbas_smi_request(smi_cmd);
  if (!ret)
   ret = count;
  break;
 case 1:

  smi_cmd->ebx = (u32) virt_to_phys(smi_cmd->command_buffer);
  ret = dcdbas_smi_request(smi_cmd);
  if (!ret)
   ret = count;
  break;
 case 0:
  memset(smi_data_buf, 0, smi_data_buf_size);
  ret = count;
  break;
 default:
  ret = -EINVAL;
  break;
 }

out:
 mutex_unlock(&smi_data_lock);
 return ret;
}
