
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ipw_dev* Instance; } ;
struct pcmcia_device {int * dev_node; TYPE_1__ irq; struct ipw_dev* priv; } ;
struct ipw_dev {int hardware; int * nodes; struct pcmcia_device* link; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RegisterClient ;
 int config_ipwireless (struct ipw_dev*) ;
 int cs_error (struct pcmcia_device*,int ,int) ;
 int ipwireless_detach (struct pcmcia_device*) ;
 int ipwireless_hardware_create () ;
 int kfree (struct ipw_dev*) ;
 struct ipw_dev* kzalloc (int,int ) ;

__attribute__((used)) static int ipwireless_attach(struct pcmcia_device *link)
{
 struct ipw_dev *ipw;
 int ret;

 ipw = kzalloc(sizeof(struct ipw_dev), GFP_KERNEL);
 if (!ipw)
  return -ENOMEM;

 ipw->link = link;
 link->priv = ipw;
 link->irq.Instance = ipw;


 link->dev_node = &ipw->nodes[0];

 ipw->hardware = ipwireless_hardware_create();
 if (!ipw->hardware) {
  kfree(ipw);
  return -ENOMEM;
 }


 ret = config_ipwireless(ipw);

 if (ret != 0) {
  cs_error(link, RegisterClient, ret);
  ipwireless_detach(link);
  return ret;
 }

 return 0;
}
