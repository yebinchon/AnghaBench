
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {int res_skt; int res_io; int res_mem; int res_attr; int * virt_io; int node; TYPE_1__* ops; int socket; int poll_timer; } ;
struct skt_dev_info {int nskt; struct soc_pcmcia_socket* skt; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* hw_shutdown ) (struct soc_pcmcia_socket*) ;} ;


 int dead_socket ;
 int del_timer_sync (int *) ;
 struct skt_dev_info* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int flush_scheduled_work () ;
 int iounmap (int *) ;
 int kfree (struct skt_dev_info*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcmcia_unregister_socket (int *) ;
 int release_resource (int *) ;
 int soc_common_pcmcia_config_skt (struct soc_pcmcia_socket*,int *) ;
 int soc_pcmcia_cpufreq_unregister () ;
 int soc_pcmcia_sockets ;
 int soc_pcmcia_sockets_lock ;
 int stub1 (struct soc_pcmcia_socket*) ;

int soc_common_drv_pcmcia_remove(struct device *dev)
{
 struct skt_dev_info *sinfo = dev_get_drvdata(dev);
 int i;

 dev_set_drvdata(dev, ((void*)0));

 mutex_lock(&soc_pcmcia_sockets_lock);
 for (i = 0; i < sinfo->nskt; i++) {
  struct soc_pcmcia_socket *skt = &sinfo->skt[i];

  del_timer_sync(&skt->poll_timer);

  pcmcia_unregister_socket(&skt->socket);

  flush_scheduled_work();

  skt->ops->hw_shutdown(skt);

  soc_common_pcmcia_config_skt(skt, &dead_socket);

  list_del(&skt->node);
  iounmap(skt->virt_io);
  skt->virt_io = ((void*)0);
  release_resource(&skt->res_attr);
  release_resource(&skt->res_mem);
  release_resource(&skt->res_io);
  release_resource(&skt->res_skt);
 }
 if (list_empty(&soc_pcmcia_sockets))
  soc_pcmcia_cpufreq_unregister();

 mutex_unlock(&soc_pcmcia_sockets_lock);

 kfree(sinfo);

 return 0;
}
