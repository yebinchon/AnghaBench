
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int release; int parent; } ;
struct TYPE_5__ {int device_type; } ;
struct sas_rphy {TYPE_2__ dev; TYPE_1__ identify; scalar_t__ scsi_target_id; } ;
struct sas_port {int dev; } ;
struct sas_host_attrs {int lock; int next_expander_id; } ;
struct sas_expander_device {struct sas_rphy rphy; } ;
struct Scsi_Host {int host_no; } ;
typedef enum sas_device_type { ____Placeholder_sas_device_type } sas_device_type ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int SAS_EDGE_EXPANDER_DEVICE ;
 int SAS_FANOUT_EXPANDER_DEVICE ;
 int dev_set_name (TYPE_2__*,char*,int ,scalar_t__) ;
 struct Scsi_Host* dev_to_shost (int *) ;
 int device_initialize (TYPE_2__*) ;
 int get_device (int *) ;
 struct sas_expander_device* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sas_expander_release ;
 int sas_rphy_initialize (struct sas_rphy*) ;
 struct sas_host_attrs* to_sas_host_attrs (struct Scsi_Host*) ;
 int transport_setup_device (TYPE_2__*) ;

struct sas_rphy *sas_expander_alloc(struct sas_port *parent,
        enum sas_device_type type)
{
 struct Scsi_Host *shost = dev_to_shost(&parent->dev);
 struct sas_expander_device *rdev;
 struct sas_host_attrs *sas_host = to_sas_host_attrs(shost);

 BUG_ON(type != SAS_EDGE_EXPANDER_DEVICE &&
        type != SAS_FANOUT_EXPANDER_DEVICE);

 rdev = kzalloc(sizeof(*rdev), GFP_KERNEL);
 if (!rdev) {
  return ((void*)0);
 }

 device_initialize(&rdev->rphy.dev);
 rdev->rphy.dev.parent = get_device(&parent->dev);
 rdev->rphy.dev.release = sas_expander_release;
 mutex_lock(&sas_host->lock);
 rdev->rphy.scsi_target_id = sas_host->next_expander_id++;
 mutex_unlock(&sas_host->lock);
 dev_set_name(&rdev->rphy.dev, "expander-%d:%d",
       shost->host_no, rdev->rphy.scsi_target_id);
 rdev->rphy.identify.device_type = type;
 sas_rphy_initialize(&rdev->rphy);
 transport_setup_device(&rdev->rphy.dev);

 return &rdev->rphy;
}
