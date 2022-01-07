
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_host {int nr_scans; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;


 int atomic_read (int *) ;

int iscsi_scan_finished(struct Scsi_Host *shost, unsigned long time)
{
 struct iscsi_cls_host *ihost = shost->shost_data;




 return !atomic_read(&ihost->nr_scans);
}
