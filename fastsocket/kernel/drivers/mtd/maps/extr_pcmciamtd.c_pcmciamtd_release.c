
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmciamtd_dev {int * win_base; } ;
struct pcmcia_device {scalar_t__ win; struct pcmciamtd_dev* priv; } ;


 int DEBUG (int,char*,struct pcmcia_device*) ;
 int iounmap (int *) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int pcmcia_release_window (scalar_t__) ;

__attribute__((used)) static void pcmciamtd_release(struct pcmcia_device *link)
{
 struct pcmciamtd_dev *dev = link->priv;

 DEBUG(3, "link = 0x%p", link);

 if (link->win) {
  if(dev->win_base) {
   iounmap(dev->win_base);
   dev->win_base = ((void*)0);
  }
  pcmcia_release_window(link->win);
 }
 pcmcia_disable_device(link);
}
