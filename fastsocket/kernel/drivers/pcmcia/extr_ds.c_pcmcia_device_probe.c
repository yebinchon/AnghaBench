
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pcmcia_socket {int device_count; } ;
struct TYPE_6__ {int name; } ;
struct pcmcia_driver {int (* probe ) (struct pcmcia_device*) ;int owner; TYPE_2__ drv; } ;
struct pcmcia_device_id {int match_flags; } ;
struct TYPE_5__ {scalar_t__ Present; scalar_t__ ConfigBase; } ;
struct pcmcia_device {scalar_t__ device_no; struct pcmcia_socket* socket; TYPE_1__ conf; int func; int function_config; int dev; } ;
struct device {int driver; } ;
struct TYPE_7__ {scalar_t__* rmask; scalar_t__ base; } ;
typedef TYPE_3__ cistpl_config_t ;


 int CISTPL_CONFIG ;
 int EINVAL ;
 int ENODEV ;
 int KERN_INFO ;
 int PCMCIA_DEV_ID_MATCH_DEVICE_NO ;
 struct pcmcia_device_id* dev_get_drvdata (int *) ;
 int dev_printk (int ,struct device*,char*) ;
 int ds_dev_dbg (int,struct device*,char*,int ,...) ;
 struct device* get_device (struct device*) ;
 int module_put (int ) ;
 int pccard_read_tuple (struct pcmcia_socket*,int ,int ,TYPE_3__*) ;
 int pcmcia_add_device_later (struct pcmcia_socket*,int ) ;
 int put_device (struct device*) ;
 int stub1 (struct pcmcia_device*) ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;
 struct pcmcia_driver* to_pcmcia_drv (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int pcmcia_device_probe(struct device * dev)
{
 struct pcmcia_device *p_dev;
 struct pcmcia_driver *p_drv;
 struct pcmcia_device_id *did;
 struct pcmcia_socket *s;
 cistpl_config_t cis_config;
 int ret = 0;

 dev = get_device(dev);
 if (!dev)
  return -ENODEV;

 p_dev = to_pcmcia_dev(dev);
 p_drv = to_pcmcia_drv(dev->driver);
 s = p_dev->socket;
 did = dev_get_drvdata(&p_dev->dev);

 ds_dev_dbg(1, dev, "trying to bind to %s\n", p_drv->drv.name);

 if ((!p_drv->probe) || (!p_dev->function_config) ||
     (!try_module_get(p_drv->owner))) {
  ret = -EINVAL;
  goto put_dev;
 }


 ret = pccard_read_tuple(p_dev->socket, p_dev->func, CISTPL_CONFIG,
    &cis_config);
 if (!ret) {
  p_dev->conf.ConfigBase = cis_config.base;
  p_dev->conf.Present = cis_config.rmask[0];
 } else {
  dev_printk(KERN_INFO, dev,
      "pcmcia: could not parse base and rmask0 of CIS\n");
  p_dev->conf.ConfigBase = 0;
  p_dev->conf.Present = 0;
 }

 ret = p_drv->probe(p_dev);
 if (ret) {
  ds_dev_dbg(1, dev, "binding to %s failed with %d\n",
      p_drv->drv.name, ret);
  goto put_module;
 }

 if (did && (did->match_flags & PCMCIA_DEV_ID_MATCH_DEVICE_NO) &&
     (p_dev->socket->device_count == 1) && (p_dev->device_no == 0))
  pcmcia_add_device_later(p_dev->socket, 0);

put_module:
 if (ret)
  module_put(p_drv->owner);
put_dev:
 if (ret)
  put_device(dev);
 return (ret);
}
