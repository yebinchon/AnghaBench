
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 scalar_t__ ibmvscsi_do_host_config (struct ibmvscsi_host_data*,char*,int ) ;
 struct ibmvscsi_host_data* shost_priv (struct Scsi_Host*) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t show_host_config(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ibmvscsi_host_data *hostdata = shost_priv(shost);


 if (ibmvscsi_do_host_config(hostdata, buf, PAGE_SIZE) == 0)
  return strlen(buf);
 else
  return 0;
}
