
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* function_config; struct pcmcia_device* devname; int socket; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int ref; } ;


 int ds_dev_dbg (int,struct device*,char*) ;
 int kfree (struct pcmcia_device*) ;
 int kref_put (int *,int ) ;
 int pcmcia_put_socket (int ) ;
 int pcmcia_release_function ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;

__attribute__((used)) static void pcmcia_release_dev(struct device *dev)
{
 struct pcmcia_device *p_dev = to_pcmcia_dev(dev);
 ds_dev_dbg(1, dev, "releasing device\n");
 pcmcia_put_socket(p_dev->socket);
 kfree(p_dev->devname);
 kref_put(&p_dev->function_config->ref, pcmcia_release_function);
 kfree(p_dev);
}
