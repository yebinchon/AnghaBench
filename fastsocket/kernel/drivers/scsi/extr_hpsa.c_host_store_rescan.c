
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int scsi_host; } ;
struct Scsi_Host {int dummy; } ;
typedef size_t ssize_t ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 int hpsa_scan_start (int ) ;
 struct ctlr_info* shost_to_hba (struct Scsi_Host*) ;

__attribute__((used)) static ssize_t host_store_rescan(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct ctlr_info *h;
 struct Scsi_Host *shost = class_to_shost(dev);
 h = shost_to_hba(shost);
 hpsa_scan_start(h->scsi_host);
 return count;
}
