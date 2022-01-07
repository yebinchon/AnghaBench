
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct pcmcia_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int ds_dev_dbg (int,struct device*,char*) ;
 int pcmcia_device_query (struct pcmcia_device*) ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;

__attribute__((used)) static int pcmcia_requery(struct device *dev, void * _data)
{
 struct pcmcia_device *p_dev = to_pcmcia_dev(dev);
 if (!p_dev->dev.driver) {
  ds_dev_dbg(1, dev, "update device information\n");
  pcmcia_device_query(p_dev);
 }

 return 0;
}
