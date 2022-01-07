
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int release; int parent; } ;
struct TYPE_7__ {int device_type; } ;
struct sas_rphy {TYPE_2__ dev; TYPE_1__ identify; int scsi_target_id; } ;
struct TYPE_9__ {int parent; } ;
struct sas_port {int port_identifier; TYPE_3__ dev; } ;
struct sas_end_device {struct sas_rphy rphy; } ;
struct Scsi_Host {int host_no; } ;


 int GFP_KERNEL ;
 int SAS_END_DEVICE ;
 int dev_set_name (TYPE_2__*,char*,int ,int ,...) ;
 struct sas_rphy* dev_to_rphy (int ) ;
 struct Scsi_Host* dev_to_shost (TYPE_3__*) ;
 int device_initialize (TYPE_2__*) ;
 int get_device (TYPE_3__*) ;
 struct sas_end_device* kzalloc (int,int ) ;
 int sas_end_device_release ;
 int sas_rphy_initialize (struct sas_rphy*) ;
 scalar_t__ scsi_is_sas_expander_device (int ) ;
 int transport_setup_device (TYPE_2__*) ;

struct sas_rphy *sas_end_device_alloc(struct sas_port *parent)
{
 struct Scsi_Host *shost = dev_to_shost(&parent->dev);
 struct sas_end_device *rdev;

 rdev = kzalloc(sizeof(*rdev), GFP_KERNEL);
 if (!rdev) {
  return ((void*)0);
 }

 device_initialize(&rdev->rphy.dev);
 rdev->rphy.dev.parent = get_device(&parent->dev);
 rdev->rphy.dev.release = sas_end_device_release;
 if (scsi_is_sas_expander_device(parent->dev.parent)) {
  struct sas_rphy *rphy = dev_to_rphy(parent->dev.parent);
  dev_set_name(&rdev->rphy.dev, "end_device-%d:%d:%d",
        shost->host_no, rphy->scsi_target_id,
        parent->port_identifier);
 } else
  dev_set_name(&rdev->rphy.dev, "end_device-%d:%d",
        shost->host_no, parent->port_identifier);
 rdev->rphy.identify.device_type = SAS_END_DEVICE;
 sas_rphy_initialize(&rdev->rphy);
 transport_setup_device(&rdev->rphy.dev);

 return &rdev->rphy;
}
