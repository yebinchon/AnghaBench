
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvscsi_adapter {int rev; int req_pages; int cmp_pages; int msg_pages; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int cmd_per_lun; } ;


 TYPE_1__ pvscsi_template ;
 struct pvscsi_adapter* shost_priv (struct Scsi_Host*) ;
 int sprintf (char*,char*,int,int,int,int,int) ;

__attribute__((used)) static const char *pvscsi_info(struct Scsi_Host *host)
{
 struct pvscsi_adapter *adapter = shost_priv(host);
 static char buf[256];

 sprintf(buf, "VMware PVSCSI storage adapter rev %d, req/cmp/msg rings: "
  "%u/%u/%u pages, cmd_per_lun=%u", adapter->rev,
  adapter->req_pages, adapter->cmp_pages, adapter->msg_pages,
  pvscsi_template.cmd_per_lun);

 return buf;
}
