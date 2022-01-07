
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 scalar_t__ pcmcia_dev_present (struct pcmcia_device*) ;

__attribute__((used)) static int card_present(void *arg)
{
 struct pcmcia_device *link = (struct pcmcia_device *)arg;

 if (pcmcia_dev_present(link))
  return 1;

 return 0;
}
