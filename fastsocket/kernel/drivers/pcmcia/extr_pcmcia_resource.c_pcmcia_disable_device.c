
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ win; int irq; int io; } ;


 int pcmcia_release_configuration (struct pcmcia_device*) ;
 int pcmcia_release_io (struct pcmcia_device*,int *) ;
 int pcmcia_release_irq (struct pcmcia_device*,int *) ;
 int pcmcia_release_window (scalar_t__) ;

void pcmcia_disable_device(struct pcmcia_device *p_dev) {
 pcmcia_release_configuration(p_dev);
 pcmcia_release_io(p_dev, &p_dev->io);
 pcmcia_release_irq(p_dev, &p_dev->irq);
 if (p_dev->win)
  pcmcia_release_window(p_dev->win);
}
