
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ata_port {int port_no; } ;
struct ata_host {int n_ports; struct ata_port** ports; struct device* dev; int eh_mutex; int lock; } ;


 int DPRINTK (char*) ;
 int GFP_KERNEL ;
 int ata_host_release ;
 struct ata_port* ata_port_alloc (struct ata_host*) ;
 int dev_set_drvdata (struct device*,struct ata_host*) ;
 int devres_add (struct device*,struct ata_host*) ;
 struct ata_host* devres_alloc (int ,size_t,int ) ;
 int devres_open_group (struct device*,int *,int ) ;
 int devres_release_group (struct device*,int *) ;
 int devres_remove_group (struct device*,int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

struct ata_host *ata_host_alloc(struct device *dev, int max_ports)
{
 struct ata_host *host;
 size_t sz;
 int i;

 DPRINTK("ENTER\n");

 if (!devres_open_group(dev, ((void*)0), GFP_KERNEL))
  return ((void*)0);


 sz = sizeof(struct ata_host) + (max_ports + 1) * sizeof(void *);

 host = devres_alloc(ata_host_release, sz, GFP_KERNEL);
 if (!host)
  goto err_out;

 devres_add(dev, host);
 dev_set_drvdata(dev, host);

 spin_lock_init(&host->lock);
 mutex_init(&host->eh_mutex);
 host->dev = dev;
 host->n_ports = max_ports;


 for (i = 0; i < max_ports; i++) {
  struct ata_port *ap;

  ap = ata_port_alloc(host);
  if (!ap)
   goto err_out;

  ap->port_no = i;
  host->ports[i] = ap;
 }

 devres_remove_group(dev, ((void*)0));
 return host;

 err_out:
 devres_release_group(dev, ((void*)0));
 return ((void*)0);
}
