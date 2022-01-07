
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_4__ {int (* lport_reset ) (struct fc_lport*) ;} ;
struct fc_lport {int port_id; TYPE_2__ tt; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;


 int FAILED ;
 unsigned long FC_HOST_RESET_TIMEOUT ;
 int FC_SCSI_DBG (struct fc_lport*,char*) ;
 int KERN_INFO ;
 int SUCCESS ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 scalar_t__ fc_fcp_lport_queue_ready (struct fc_lport*) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int shost_printk (int ,struct Scsi_Host*,char*,int ) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;
 int stub1 (struct fc_lport*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int fc_eh_host_reset(struct scsi_cmnd *sc_cmd)
{
 struct Scsi_Host *shost = sc_cmd->device->host;
 struct fc_lport *lport = shost_priv(shost);
 unsigned long wait_tmo;

 FC_SCSI_DBG(lport, "Resetting host\n");

 fc_block_scsi_eh(sc_cmd);

 lport->tt.lport_reset(lport);
 wait_tmo = jiffies + FC_HOST_RESET_TIMEOUT;
 while (!fc_fcp_lport_queue_ready(lport) && time_before(jiffies,
              wait_tmo))
  msleep(1000);

 if (fc_fcp_lport_queue_ready(lport)) {
  shost_printk(KERN_INFO, shost, "libfc: Host reset succeeded "
        "on port (%6.6x)\n", lport->port_id);
  return SUCCESS;
 } else {
  shost_printk(KERN_INFO, shost, "libfc: Host reset failed, "
        "port (%6.6x) is not ready.\n",
        lport->port_id);
  return FAILED;
 }
}
