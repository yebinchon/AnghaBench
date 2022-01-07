
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct Scsi_Host {int scan_mutex; int async_scan; } ;


 int __scsi_scan_target (struct device*,unsigned int,unsigned int,unsigned int,int) ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_complete_async_scans () ;
 scalar_t__ scsi_host_scan_allowed (struct Scsi_Host*) ;
 int scsi_scan_type ;
 scalar_t__ strncmp (int ,char*,int) ;

void scsi_scan_target(struct device *parent, unsigned int channel,
        unsigned int id, unsigned int lun, int rescan)
{
 struct Scsi_Host *shost = dev_to_shost(parent);

 if (strncmp(scsi_scan_type, "none", 4) == 0)
  return;

 mutex_lock(&shost->scan_mutex);
 if (!shost->async_scan)
  scsi_complete_async_scans();

 if (scsi_host_scan_allowed(shost))
  __scsi_scan_target(parent, channel, id, lun, rescan);
 mutex_unlock(&shost->scan_mutex);
}
