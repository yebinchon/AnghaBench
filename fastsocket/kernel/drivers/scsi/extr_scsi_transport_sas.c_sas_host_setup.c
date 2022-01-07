
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_container {int dummy; } ;
struct sas_host_attrs {scalar_t__ next_port_id; scalar_t__ next_expander_id; scalar_t__ next_target_id; int lock; int rphy_list; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_no; } ;


 int INIT_LIST_HEAD (int *) ;
 int KERN_ERR ;
 int dev_printk (int ,struct device*,char*,int ) ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 int mutex_init (int *) ;
 scalar_t__ sas_bsg_initialize (struct Scsi_Host*,int *) ;
 struct sas_host_attrs* to_sas_host_attrs (struct Scsi_Host*) ;

__attribute__((used)) static int sas_host_setup(struct transport_container *tc, struct device *dev,
     struct device *cdev)
{
 struct Scsi_Host *shost = dev_to_shost(dev);
 struct sas_host_attrs *sas_host = to_sas_host_attrs(shost);

 INIT_LIST_HEAD(&sas_host->rphy_list);
 mutex_init(&sas_host->lock);
 sas_host->next_target_id = 0;
 sas_host->next_expander_id = 0;
 sas_host->next_port_id = 0;

 if (sas_bsg_initialize(shost, ((void*)0)))
  dev_printk(KERN_ERR, dev, "fail to a bsg device %d\n",
      shost->host_no);

 return 0;
}
