
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_container {int dummy; } ;
struct fc_host_attrs {int node_name; int port_name; int permanent_port_name; int maxframe_size; int port_id; int fabric_name; int * work_q; void* devloss_work_q; int devloss_work_q_name; int dev_loss_tmo; int work_q_name; scalar_t__ npiv_vports_inuse; scalar_t__ next_vport_number; scalar_t__ next_target_id; scalar_t__ next_rport_number; int vports; int rport_bindings; int rports; int tgtid_bind_type; int system_hostname; int symbolic_name; void* speed; int active_fc4s; int port_state; int port_type; int optionrom_version; int firmware_version; int driver_version; int hardware_version; int model_description; int model; int manufacturer; int serial_number; scalar_t__ max_npiv_vports; void* supported_speeds; int supported_fc4s; int supported_classes; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_no; } ;


 int ENOMEM ;
 int FC_COS_UNSPECIFIED ;
 void* FC_PORTSPEED_UNKNOWN ;
 int FC_PORTSTATE_UNKNOWN ;
 int FC_PORTTYPE_UNKNOWN ;
 int FC_TGTID_BIND_BY_WWPN ;
 int INIT_LIST_HEAD (int *) ;
 void* create_singlethread_workqueue (int ) ;
 int destroy_workqueue (int *) ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 int fc_bsg_hostadd (struct Scsi_Host*,struct fc_host_attrs*) ;
 int fc_dev_loss_tmo ;
 int memset (int ,int ,int) ;
 struct fc_host_attrs* shost_to_fc_host (struct Scsi_Host*) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int fc_host_setup(struct transport_container *tc, struct device *dev,
    struct device *cdev)
{
 struct Scsi_Host *shost = dev_to_shost(dev);
 struct fc_host_attrs *fc_host = shost_to_fc_host(shost);






 fc_host->node_name = -1;
 fc_host->port_name = -1;
 fc_host->permanent_port_name = -1;
 fc_host->supported_classes = FC_COS_UNSPECIFIED;
 memset(fc_host->supported_fc4s, 0,
  sizeof(fc_host->supported_fc4s));
 fc_host->supported_speeds = FC_PORTSPEED_UNKNOWN;
 fc_host->maxframe_size = -1;
 fc_host->max_npiv_vports = 0;
 memset(fc_host->serial_number, 0,
  sizeof(fc_host->serial_number));
 memset(fc_host->manufacturer, 0,
  sizeof(fc_host->manufacturer));
 memset(fc_host->model, 0,
  sizeof(fc_host->model));
 memset(fc_host->model_description, 0,
  sizeof(fc_host->model_description));
 memset(fc_host->hardware_version, 0,
  sizeof(fc_host->hardware_version));
 memset(fc_host->driver_version, 0,
  sizeof(fc_host->driver_version));
 memset(fc_host->firmware_version, 0,
  sizeof(fc_host->firmware_version));
 memset(fc_host->optionrom_version, 0,
  sizeof(fc_host->optionrom_version));

 fc_host->port_id = -1;
 fc_host->port_type = FC_PORTTYPE_UNKNOWN;
 fc_host->port_state = FC_PORTSTATE_UNKNOWN;
 memset(fc_host->active_fc4s, 0,
  sizeof(fc_host->active_fc4s));
 fc_host->speed = FC_PORTSPEED_UNKNOWN;
 fc_host->fabric_name = -1;
 memset(fc_host->symbolic_name, 0, sizeof(fc_host->symbolic_name));
 memset(fc_host->system_hostname, 0, sizeof(fc_host->system_hostname));

 fc_host->tgtid_bind_type = FC_TGTID_BIND_BY_WWPN;

 INIT_LIST_HEAD(&fc_host->rports);
 INIT_LIST_HEAD(&fc_host->rport_bindings);
 INIT_LIST_HEAD(&fc_host->vports);
 fc_host->next_rport_number = 0;
 fc_host->next_target_id = 0;
 fc_host->next_vport_number = 0;
 fc_host->npiv_vports_inuse = 0;

 snprintf(fc_host->work_q_name, sizeof(fc_host->work_q_name),
   "fc_wq_%d", shost->host_no);
 fc_host->work_q = create_singlethread_workqueue(
     fc_host->work_q_name);
 if (!fc_host->work_q)
  return -ENOMEM;

 fc_host->dev_loss_tmo = fc_dev_loss_tmo;
 snprintf(fc_host->devloss_work_q_name,
   sizeof(fc_host->devloss_work_q_name),
   "fc_dl_%d", shost->host_no);
 fc_host->devloss_work_q = create_singlethread_workqueue(
     fc_host->devloss_work_q_name);
 if (!fc_host->devloss_work_q) {
  destroy_workqueue(fc_host->work_q);
  fc_host->work_q = ((void*)0);
  return -ENOMEM;
 }

 fc_bsg_hostadd(shost, fc_host);


 return 0;
}
