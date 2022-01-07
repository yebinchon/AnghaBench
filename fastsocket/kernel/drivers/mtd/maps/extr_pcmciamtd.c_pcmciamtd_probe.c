
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmciamtd_dev {struct pcmcia_device* p_dev; } ;
struct TYPE_2__ {int IntType; scalar_t__ Attributes; } ;
struct pcmcia_device {TYPE_1__ conf; struct pcmciamtd_dev* priv; } ;


 int DEBUG (int,char*,struct pcmciamtd_dev*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MEMORY ;
 struct pcmciamtd_dev* kzalloc (int,int ) ;
 int pcmciamtd_config (struct pcmcia_device*) ;

__attribute__((used)) static int pcmciamtd_probe(struct pcmcia_device *link)
{
 struct pcmciamtd_dev *dev;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) return -ENOMEM;
 DEBUG(1, "dev=0x%p", dev);

 dev->p_dev = link;
 link->priv = dev;

 link->conf.Attributes = 0;
 link->conf.IntType = INT_MEMORY;

 return pcmciamtd_config(link);
}
