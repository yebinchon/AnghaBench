
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void daqp_cs_release(struct pcmcia_device *link)
{
 DEBUG(0, "daqp_cs_release(0x%p)\n", link);

 pcmcia_disable_device(link);
}
