
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_host {scalar_t__ workq; } ;
struct iscsi_conn {int xmitwork; TYPE_1__* session; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int queue_work (scalar_t__,int *) ;
 struct iscsi_host* shost_priv (struct Scsi_Host*) ;

inline void iscsi_conn_queue_work(struct iscsi_conn *conn)
{
 struct Scsi_Host *shost = conn->session->host;
 struct iscsi_host *ihost = shost_priv(shost);

 if (ihost->workq)
  queue_work(ihost->workq, &conn->xmitwork);
}
