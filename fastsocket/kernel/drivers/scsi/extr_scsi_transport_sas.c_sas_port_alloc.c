
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sas_rphy {int scsi_target_id; } ;
struct TYPE_4__ {int release; int parent; } ;
struct sas_port {int port_identifier; TYPE_1__ dev; int phy_list; int phy_list_mutex; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_no; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_name (TYPE_1__*,char*,int ,int,...) ;
 struct sas_rphy* dev_to_rphy (struct device*) ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 int device_initialize (TYPE_1__*) ;
 int get_device (struct device*) ;
 struct sas_port* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sas_port_release ;
 scalar_t__ scsi_is_sas_expander_device (struct device*) ;
 int transport_setup_device (TYPE_1__*) ;

struct sas_port *sas_port_alloc(struct device *parent, int port_id)
{
 struct Scsi_Host *shost = dev_to_shost(parent);
 struct sas_port *port;

 port = kzalloc(sizeof(*port), GFP_KERNEL);
 if (!port)
  return ((void*)0);

 port->port_identifier = port_id;

 device_initialize(&port->dev);

 port->dev.parent = get_device(parent);
 port->dev.release = sas_port_release;

 mutex_init(&port->phy_list_mutex);
 INIT_LIST_HEAD(&port->phy_list);

 if (scsi_is_sas_expander_device(parent)) {
  struct sas_rphy *rphy = dev_to_rphy(parent);
  dev_set_name(&port->dev, "port-%d:%d:%d", shost->host_no,
        rphy->scsi_target_id, port->port_identifier);
 } else
  dev_set_name(&port->dev, "port-%d:%d", shost->host_no,
        port->port_identifier);

 transport_setup_device(&port->dev);

 return port;
}
