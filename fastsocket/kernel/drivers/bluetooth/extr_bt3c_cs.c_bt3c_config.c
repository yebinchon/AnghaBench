
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ AssignedIRQ; } ;
struct pcmcia_device {TYPE_2__* dev_node; int conf; TYPE_4__ irq; TYPE_3__* priv; } ;
struct TYPE_7__ {int dev_name; } ;
struct TYPE_8__ {TYPE_2__ node; TYPE_1__* hdev; } ;
typedef TYPE_3__ bt3c_info_t ;
struct TYPE_6__ {int name; } ;


 int BT_ERR (char*) ;
 int ENODEV ;
 int RequestConfiguration ;
 int RequestIO ;
 int RequestIRQ ;
 int bt3c_check_config ;
 int bt3c_check_config_notpicky ;
 scalar_t__ bt3c_open (TYPE_3__*) ;
 int bt3c_release (struct pcmcia_device*) ;
 int cs_error (struct pcmcia_device*,int ,int) ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,void*) ;
 int pcmcia_request_configuration (struct pcmcia_device*,int *) ;
 int pcmcia_request_irq (struct pcmcia_device*,TYPE_4__*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int bt3c_config(struct pcmcia_device *link)
{
 bt3c_info_t *info = link->priv;
 int i;
 unsigned long try;



 for (try = 0; try < 2; try++)
  if (!pcmcia_loop_config(link, bt3c_check_config, (void *) try))
   goto found_port;




 if (!pcmcia_loop_config(link, bt3c_check_config_notpicky, ((void*)0)))
  goto found_port;

 BT_ERR("No usable port range found");
 cs_error(link, RequestIO, -ENODEV);
 goto failed;

found_port:
 i = pcmcia_request_irq(link, &link->irq);
 if (i != 0) {
  cs_error(link, RequestIRQ, i);
  link->irq.AssignedIRQ = 0;
 }

 i = pcmcia_request_configuration(link, &link->conf);
 if (i != 0) {
  cs_error(link, RequestConfiguration, i);
  goto failed;
 }

 if (bt3c_open(info) != 0)
  goto failed;

 strcpy(info->node.dev_name, info->hdev->name);
 link->dev_node = &info->node;

 return 0;

failed:
 bt3c_release(link);
 return -ENODEV;
}
