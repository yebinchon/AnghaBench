
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ dev_node; } ;


 int DPRINTK (char*,struct pcmcia_device*) ;
 int cs_release (struct pcmcia_device*) ;

__attribute__((used)) static void cs_detach(struct pcmcia_device *link)
{
 DPRINTK("cs_detach(link=%p)\n", link);

 if (link->dev_node) {
  cs_release(link);
 }
}
