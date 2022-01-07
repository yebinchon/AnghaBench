
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {struct fc_lport* dd_data; } ;
struct fc_lport {int lp_mutex; int list; } ;
struct Scsi_Host {int dummy; } ;


 int fcoe_config_mutex ;
 int fcoe_if_destroy (struct fc_lport*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;
 struct Scsi_Host* vport_to_shost (struct fc_vport*) ;

__attribute__((used)) static int fcoe_vport_destroy(struct fc_vport *vport)
{
 struct Scsi_Host *shost = vport_to_shost(vport);
 struct fc_lport *n_port = shost_priv(shost);
 struct fc_lport *vn_port = vport->dd_data;

 mutex_lock(&n_port->lp_mutex);
 list_del(&vn_port->list);
 mutex_unlock(&n_port->lp_mutex);

 mutex_lock(&fcoe_config_mutex);
 fcoe_if_destroy(vn_port);
 mutex_unlock(&fcoe_config_mutex);

 return 0;
}
