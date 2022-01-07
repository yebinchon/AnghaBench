
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct TYPE_9__ {int (* rport_login ) (TYPE_4__*) ;TYPE_4__* (* rport_create ) (struct fc_lport*,int ) ;int rport_destroy; int (* rport_logoff ) (TYPE_4__*) ;} ;
struct TYPE_8__ {int disc_mutex; } ;
struct fc_lport {TYPE_4__* ptp_rdata; TYPE_3__ tt; TYPE_2__ disc; } ;
struct TYPE_7__ {void* node_name; void* port_name; } ;
struct TYPE_10__ {TYPE_1__ ids; int kref; } ;


 int fc_lport_enter_ready (struct fc_lport*) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_4__*) ;
 TYPE_4__* stub2 (struct fc_lport*,int ) ;
 int stub3 (TYPE_4__*) ;

__attribute__((used)) static void fc_lport_ptp_setup(struct fc_lport *lport,
          u32 remote_fid, u64 remote_wwpn,
          u64 remote_wwnn)
{
 mutex_lock(&lport->disc.disc_mutex);
 if (lport->ptp_rdata) {
  lport->tt.rport_logoff(lport->ptp_rdata);
  kref_put(&lport->ptp_rdata->kref, lport->tt.rport_destroy);
 }
 lport->ptp_rdata = lport->tt.rport_create(lport, remote_fid);
 kref_get(&lport->ptp_rdata->kref);
 lport->ptp_rdata->ids.port_name = remote_wwpn;
 lport->ptp_rdata->ids.node_name = remote_wwnn;
 mutex_unlock(&lport->disc.disc_mutex);

 lport->tt.rport_login(lport->ptp_rdata);

 fc_lport_enter_ready(lport);
}
