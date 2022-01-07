
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ AssignedIRQ; } ;
struct TYPE_7__ {int NumPorts1; } ;
struct pcmcia_device {TYPE_3__* dev_node; int conf; TYPE_5__ irq; TYPE_1__ io; TYPE_4__* priv; } ;
struct TYPE_9__ {int dev_name; } ;
struct TYPE_10__ {TYPE_3__ node; TYPE_2__* hdev; } ;
typedef TYPE_4__ dtl1_info_t ;
struct TYPE_8__ {int name; } ;


 int ENODEV ;
 int RequestConfiguration ;
 int RequestIRQ ;
 int cs_error (struct pcmcia_device*,int ,int) ;
 int dtl1_confcheck ;
 scalar_t__ dtl1_open (TYPE_4__*) ;
 int dtl1_release (struct pcmcia_device*) ;
 scalar_t__ pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int pcmcia_request_configuration (struct pcmcia_device*,int *) ;
 int pcmcia_request_irq (struct pcmcia_device*,TYPE_5__*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int dtl1_config(struct pcmcia_device *link)
{
 dtl1_info_t *info = link->priv;
 int i;


 link->io.NumPorts1 = 8;
 if (pcmcia_loop_config(link, dtl1_confcheck, ((void*)0)) < 0)
  goto failed;

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

 if (dtl1_open(info) != 0)
  goto failed;

 strcpy(info->node.dev_name, info->hdev->name);
 link->dev_node = &info->node;

 return 0;

failed:
 dtl1_release(link);
 return -ENODEV;
}
