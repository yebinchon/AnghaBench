
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int node_name; int port_name; int roles; int port_id; } ;
struct fc_rport_priv {int peers; int lld_event_callback; int event_work; int retry_work; int maxframe_size; int r_a_tov; int e_d_tov; int flags; int event; int rp_state; struct fc_lport* local_port; int rp_mutex; int kref; TYPE_1__ ids; } ;
struct TYPE_6__ {int rports; } ;
struct TYPE_5__ {int rport_event_callback; struct fc_rport_priv* (* rport_lookup ) (struct fc_lport*,int ) ;} ;
struct fc_lport {TYPE_3__ disc; TYPE_2__ tt; int r_a_tov; int e_d_tov; scalar_t__ rport_priv_size; } ;


 int FC_FID_DIR_SERV ;
 int FC_MIN_MAX_PAYLOAD ;
 int FC_RPORT_ROLE_UNKNOWN ;
 int FC_RP_FLAGS_REC_SUPPORTED ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int RPORT_EV_NONE ;
 int RPORT_ST_INIT ;
 int fc_rport_timeout ;
 int fc_rport_work ;
 int kref_init (int *) ;
 struct fc_rport_priv* kzalloc (scalar_t__,int ) ;
 int list_add_rcu (int *,int *) ;
 int mutex_init (int *) ;
 struct fc_rport_priv* stub1 (struct fc_lport*,int ) ;

__attribute__((used)) static struct fc_rport_priv *fc_rport_create(struct fc_lport *lport,
          u32 port_id)
{
 struct fc_rport_priv *rdata;

 rdata = lport->tt.rport_lookup(lport, port_id);
 if (rdata)
  return rdata;

 rdata = kzalloc(sizeof(*rdata) + lport->rport_priv_size, GFP_KERNEL);
 if (!rdata)
  return ((void*)0);

 rdata->ids.node_name = -1;
 rdata->ids.port_name = -1;
 rdata->ids.port_id = port_id;
 rdata->ids.roles = FC_RPORT_ROLE_UNKNOWN;

 kref_init(&rdata->kref);
 mutex_init(&rdata->rp_mutex);
 rdata->local_port = lport;
 rdata->rp_state = RPORT_ST_INIT;
 rdata->event = RPORT_EV_NONE;
 rdata->flags = FC_RP_FLAGS_REC_SUPPORTED;
 rdata->e_d_tov = lport->e_d_tov;
 rdata->r_a_tov = lport->r_a_tov;
 rdata->maxframe_size = FC_MIN_MAX_PAYLOAD;
 INIT_DELAYED_WORK(&rdata->retry_work, fc_rport_timeout);
 INIT_WORK(&rdata->event_work, fc_rport_work);
 if (port_id != FC_FID_DIR_SERV) {
  rdata->lld_event_callback = lport->tt.rport_event_callback;
  list_add_rcu(&rdata->peers, &lport->disc.rports);
 }
 return rdata;
}
