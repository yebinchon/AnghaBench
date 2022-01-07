
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct cm4000_dev* priv; } ;
struct cm4000_dev {int dummy; } ;


 int stop_monitor (struct cm4000_dev*) ;

__attribute__((used)) static int cm4000_suspend(struct pcmcia_device *link)
{
 struct cm4000_dev *dev;

 dev = link->priv;
 stop_monitor(dev);

 return 0;
}
