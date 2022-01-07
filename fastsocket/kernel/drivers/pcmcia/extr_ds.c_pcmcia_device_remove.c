
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct pcmcia_driver {int owner; TYPE_1__ drv; int (* remove ) (struct pcmcia_device*) ;} ;
struct pcmcia_device_id {int match_flags; } ;
struct pcmcia_device {scalar_t__ device_no; int _win; scalar_t__ _locked; scalar_t__ _io; scalar_t__ _irq; int * dev_node; TYPE_2__* socket; int dev; } ;
struct device {int driver; } ;
struct TYPE_4__ {scalar_t__ device_count; } ;


 int CLIENT_WIN_REQ (int) ;
 int KERN_INFO ;
 int MAX_WIN ;
 int PCMCIA_DEV_ID_MATCH_DEVICE_NO ;
 struct pcmcia_device_id* dev_get_drvdata (int *) ;
 int dev_printk (int ,struct device*,char*,int ) ;
 int ds_dev_dbg (int,struct device*,char*) ;
 int module_put (int ) ;
 int pcmcia_card_remove (TYPE_2__*,struct pcmcia_device*) ;
 int pcmcia_put_dev (struct pcmcia_device*) ;
 int stub1 (struct pcmcia_device*) ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;
 struct pcmcia_driver* to_pcmcia_drv (int ) ;

__attribute__((used)) static int pcmcia_device_remove(struct device * dev)
{
 struct pcmcia_device *p_dev;
 struct pcmcia_driver *p_drv;
 struct pcmcia_device_id *did;
 int i;

 p_dev = to_pcmcia_dev(dev);
 p_drv = to_pcmcia_drv(dev->driver);

 ds_dev_dbg(1, dev, "removing device\n");





 did = dev_get_drvdata(&p_dev->dev);
 if (did && (did->match_flags & PCMCIA_DEV_ID_MATCH_DEVICE_NO) &&
     (p_dev->socket->device_count != 0) &&
     (p_dev->device_no == 0))
  pcmcia_card_remove(p_dev->socket, p_dev);


 if (!p_drv)
  return 0;

 if (p_drv->remove)
         p_drv->remove(p_dev);

 p_dev->dev_node = ((void*)0);


 if (p_dev->_irq || p_dev->_io || p_dev->_locked)
  dev_printk(KERN_INFO, dev,
   "pcmcia: driver %s did not release config properly\n",
   p_drv->drv.name);

 for (i = 0; i < MAX_WIN; i++)
  if (p_dev->_win & CLIENT_WIN_REQ(i))
   dev_printk(KERN_INFO, dev,
     "pcmcia: driver %s did not release window properly\n",
      p_drv->drv.name);


 pcmcia_put_dev(p_dev);
 module_put(p_drv->owner);

 return 0;
}
