
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int IntType; } ;
struct pcmcia_device {TYPE_1__ conf; } ;


 int DEBUG_EXTRA ;
 int DEBUG_HW ;
 int INT_MEMORY_AND_IO ;
 int PDEBUG (int ,char*,...) ;
 int dev_info ;
 int prism2_config (struct pcmcia_device*) ;

__attribute__((used)) static int hostap_cs_probe(struct pcmcia_device *p_dev)
{
 int ret;

 PDEBUG(DEBUG_HW, "%s: setting Vcc=33 (constant)\n", dev_info);
 p_dev->conf.IntType = INT_MEMORY_AND_IO;

 ret = prism2_config(p_dev);
 if (ret) {
  PDEBUG(DEBUG_EXTRA, "prism2_config() failed\n");
 }

 return ret;
}
