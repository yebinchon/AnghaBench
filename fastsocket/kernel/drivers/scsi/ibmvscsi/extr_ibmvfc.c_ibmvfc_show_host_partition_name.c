
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibmvfc_host {TYPE_2__* login_buf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {char* partition_name; } ;
struct TYPE_4__ {TYPE_1__ resp; } ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct ibmvfc_host* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t ibmvfc_show_host_partition_name(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ibmvfc_host *vhost = shost_priv(shost);

 return snprintf(buf, PAGE_SIZE, "%s\n",
   vhost->login_buf->resp.partition_name);
}
