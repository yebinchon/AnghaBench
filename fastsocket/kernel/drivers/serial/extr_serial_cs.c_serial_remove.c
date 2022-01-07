
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_info {int ndev; int slave; TYPE_1__* p_dev; int * line; } ;
struct pcmcia_device {struct serial_info* priv; } ;
struct TYPE_2__ {int * dev_node; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int serial8250_unregister_port (int ) ;

__attribute__((used)) static void serial_remove(struct pcmcia_device *link)
{
 struct serial_info *info = link->priv;
 int i;

 DEBUG(0, "serial_release(0x%p)\n", link);




 for (i = 0; i < info->ndev; i++)
  serial8250_unregister_port(info->line[i]);

 info->p_dev->dev_node = ((void*)0);

 if (!info->slave)
  pcmcia_disable_device(link);
}
