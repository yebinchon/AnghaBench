
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void airo_release(struct pcmcia_device *link)
{
 DEBUG(0, "airo_release(0x%p)\n", link);
 pcmcia_disable_device(link);
}
