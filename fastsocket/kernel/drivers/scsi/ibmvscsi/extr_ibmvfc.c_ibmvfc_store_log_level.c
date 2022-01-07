
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {int log_level; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_lock; } ;
typedef int ssize_t ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 struct ibmvfc_host* shost_priv (struct Scsi_Host*) ;
 int simple_strtoul (char const*,int *,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t ibmvfc_store_log_level(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ibmvfc_host *vhost = shost_priv(shost);
 unsigned long flags = 0;

 spin_lock_irqsave(shost->host_lock, flags);
 vhost->log_level = simple_strtoul(buf, ((void*)0), 10);
 spin_unlock_irqrestore(shost->host_lock, flags);
 return strlen(buf);
}
