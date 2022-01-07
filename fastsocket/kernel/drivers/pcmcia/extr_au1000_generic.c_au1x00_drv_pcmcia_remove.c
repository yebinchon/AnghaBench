
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skt_dev_info {int nskt; } ;
struct platform_device {int dummy; } ;
struct au1000_pcmcia_socket {int * virt_io; TYPE_1__* ops; int socket; int poll_timer; } ;
struct TYPE_2__ {int (* hw_shutdown ) (struct au1000_pcmcia_socket*) ;} ;


 struct au1000_pcmcia_socket* PCMCIA_SOCKET (int) ;
 int au1x00_pcmcia_config_skt (struct au1000_pcmcia_socket*,int *) ;
 int dead_socket ;
 int del_timer_sync (int *) ;
 int flush_scheduled_work () ;
 int iounmap (int *) ;
 int kfree (struct skt_dev_info*) ;
 scalar_t__ mips_io_port_base ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcmcia_sockets_lock ;
 int pcmcia_unregister_socket (int *) ;
 struct skt_dev_info* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int stub1 (struct au1000_pcmcia_socket*) ;

int au1x00_drv_pcmcia_remove(struct platform_device *dev)
{
 struct skt_dev_info *sinfo = platform_get_drvdata(dev);
 int i;

 mutex_lock(&pcmcia_sockets_lock);
 platform_set_drvdata(dev, ((void*)0));

 for (i = 0; i < sinfo->nskt; i++) {
  struct au1000_pcmcia_socket *skt = PCMCIA_SOCKET(i);

  del_timer_sync(&skt->poll_timer);
  pcmcia_unregister_socket(&skt->socket);
  flush_scheduled_work();
  skt->ops->hw_shutdown(skt);
  au1x00_pcmcia_config_skt(skt, &dead_socket);
  iounmap(skt->virt_io + (u32)mips_io_port_base);
  skt->virt_io = ((void*)0);
 }

 kfree(sinfo);
 mutex_unlock(&pcmcia_sockets_lock);
 return 0;
}
