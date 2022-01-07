
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_host {scalar_t__ workq; } ;
struct iscsi_conn {int suspend_tx; TYPE_1__* session; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int ISCSI_SUSPEND_BIT ;
 int flush_workqueue (scalar_t__) ;
 int set_bit (int ,int *) ;
 struct iscsi_host* shost_priv (struct Scsi_Host*) ;

void iscsi_suspend_tx(struct iscsi_conn *conn)
{
 struct Scsi_Host *shost = conn->session->host;
 struct iscsi_host *ihost = shost_priv(shost);

 set_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
 if (ihost->workq)
  flush_workqueue(ihost->workq);
}
