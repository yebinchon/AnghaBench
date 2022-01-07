
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int start; } ;
struct TYPE_15__ {struct device* parent; } ;
struct TYPE_13__ {int features; unsigned long io_offset; int sock; TYPE_8__ dev; int pci_irq; int map_size; scalar_t__ irq_mask; int * resource_ops; int owner; int * ops; } ;
struct TYPE_14__ {unsigned long data; scalar_t__ expires; int function; } ;
struct soc_pcmcia_socket {TYPE_1__ res_skt; TYPE_1__ res_io; TYPE_1__ res_mem; TYPE_1__ res_attr; int * virt_io; int node; TYPE_4__ socket; TYPE_7__ poll_timer; int status; int irq; struct pcmcia_low_level* ops; struct device* dev; } ;
struct skt_dev_info {int nskt; struct soc_pcmcia_socket* skt; } ;
struct pcmcia_low_level {int (* hw_init ) (struct soc_pcmcia_socket*) ;int (* hw_shutdown ) (struct soc_pcmcia_socket*) ;int (* set_timing ) (struct soc_pcmcia_socket*) ;int owner; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 scalar_t__ SOC_PCMCIA_POLL_PERIOD ;
 int SS_CAP_PCCARD ;
 int SS_CAP_STATIC_MAP ;
 int WARN_ON (int) ;
 int add_timer (TYPE_7__*) ;
 int del_timer_sync (TYPE_7__*) ;
 int dev_attr_status ;
 int dev_set_drvdata (struct device*,struct skt_dev_info*) ;
 int device_create_file (TYPE_8__*,int *) ;
 int device_remove_file (TYPE_8__*,int *) ;
 int flush_scheduled_work () ;
 int init_timer (TYPE_7__*) ;
 TYPE_1__ iomem_resource ;
 int * ioremap (int ,int) ;
 int iounmap (int *) ;
 scalar_t__ jiffies ;
 int kfree (struct skt_dev_info*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pccard_static_ops ;
 int pcmcia_register_socket (TYPE_4__*) ;
 int pcmcia_unregister_socket (TYPE_4__*) ;
 int release_resource (TYPE_1__*) ;
 int request_resource (TYPE_1__*,TYPE_1__*) ;
 int soc_common_pcmcia_operations ;
 int soc_common_pcmcia_poll_event ;
 int soc_common_pcmcia_skt_state (struct soc_pcmcia_socket*) ;
 int soc_pcmcia_cpufreq_register () ;
 int soc_pcmcia_sockets ;
 int soc_pcmcia_sockets_lock ;
 int stub1 (struct soc_pcmcia_socket*) ;
 int stub2 (struct soc_pcmcia_socket*) ;
 int stub3 (struct soc_pcmcia_socket*) ;

int soc_common_drv_pcmcia_probe(struct device *dev, struct pcmcia_low_level *ops,
    struct skt_dev_info *sinfo)
{
 struct soc_pcmcia_socket *skt;
 int ret, i;

 mutex_lock(&soc_pcmcia_sockets_lock);




 for (i = 0; i < sinfo->nskt; i++) {
  skt = &sinfo->skt[i];

  skt->socket.ops = &soc_common_pcmcia_operations;
  skt->socket.owner = ops->owner;
  skt->socket.dev.parent = dev;

  init_timer(&skt->poll_timer);
  skt->poll_timer.function = soc_common_pcmcia_poll_event;
  skt->poll_timer.data = (unsigned long)skt;
  skt->poll_timer.expires = jiffies + SOC_PCMCIA_POLL_PERIOD;

  skt->dev = dev;
  skt->ops = ops;

  ret = request_resource(&iomem_resource, &skt->res_skt);
  if (ret)
   goto out_err_1;

  ret = request_resource(&skt->res_skt, &skt->res_io);
  if (ret)
   goto out_err_2;

  ret = request_resource(&skt->res_skt, &skt->res_mem);
  if (ret)
   goto out_err_3;

  ret = request_resource(&skt->res_skt, &skt->res_attr);
  if (ret)
   goto out_err_4;

  skt->virt_io = ioremap(skt->res_io.start, 0x10000);
  if (skt->virt_io == ((void*)0)) {
   ret = -ENOMEM;
   goto out_err_5;
  }

  if (list_empty(&soc_pcmcia_sockets))
   soc_pcmcia_cpufreq_register();

  list_add(&skt->node, &soc_pcmcia_sockets);






  ops->set_timing(skt);

  ret = ops->hw_init(skt);
  if (ret)
   goto out_err_6;

  skt->socket.features = SS_CAP_STATIC_MAP|SS_CAP_PCCARD;
  skt->socket.resource_ops = &pccard_static_ops;
  skt->socket.irq_mask = 0;
  skt->socket.map_size = PAGE_SIZE;
  skt->socket.pci_irq = skt->irq;
  skt->socket.io_offset = (unsigned long)skt->virt_io;

  skt->status = soc_common_pcmcia_skt_state(skt);

  ret = pcmcia_register_socket(&skt->socket);
  if (ret)
   goto out_err_7;

  WARN_ON(skt->socket.sock != i);

  add_timer(&skt->poll_timer);

  ret = device_create_file(&skt->socket.dev, &dev_attr_status);
  if (ret)
   goto out_err_8;
 }

 dev_set_drvdata(dev, sinfo);
 ret = 0;
 goto out;

 do {
  skt = &sinfo->skt[i];

  device_remove_file(&skt->socket.dev, &dev_attr_status);
 out_err_8:
  del_timer_sync(&skt->poll_timer);
  pcmcia_unregister_socket(&skt->socket);

 out_err_7:
  flush_scheduled_work();

  ops->hw_shutdown(skt);
 out_err_6:
   list_del(&skt->node);
  iounmap(skt->virt_io);
 out_err_5:
  release_resource(&skt->res_attr);
 out_err_4:
  release_resource(&skt->res_mem);
 out_err_3:
  release_resource(&skt->res_io);
 out_err_2:
  release_resource(&skt->res_skt);
 out_err_1:
  i--;
 } while (i > 0);

 kfree(sinfo);

 out:
 mutex_unlock(&soc_pcmcia_sockets_lock);
 return ret;
}
