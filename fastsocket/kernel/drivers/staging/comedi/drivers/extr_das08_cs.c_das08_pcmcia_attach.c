
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int IntType; scalar_t__ Attributes; } ;
struct TYPE_3__ {int * Handler; int IRQInfo1; int Attributes; } ;
struct pcmcia_device {TYPE_2__ conf; TYPE_1__ irq; struct local_info_t* priv; } ;
struct local_info_t {struct pcmcia_device* link; } ;


 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MEMORY_AND_IO ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_EXCLUSIVE ;
 struct pcmcia_device* cur_dev ;
 int das08_pcmcia_config (struct pcmcia_device*) ;
 struct local_info_t* kzalloc (int,int ) ;

__attribute__((used)) static int das08_pcmcia_attach(struct pcmcia_device *link)
{
 struct local_info_t *local;

 DEBUG(0, "das08_pcmcia_attach()\n");


 local = kzalloc(sizeof(struct local_info_t), GFP_KERNEL);
 if (!local)
  return -ENOMEM;
 local->link = link;
 link->priv = local;


 link->irq.Attributes = IRQ_TYPE_EXCLUSIVE;
 link->irq.IRQInfo1 = IRQ_LEVEL_ID;
 link->irq.Handler = ((void*)0);
 link->conf.Attributes = 0;
 link->conf.IntType = INT_MEMORY_AND_IO;

 cur_dev = link;

 das08_pcmcia_config(link);

 return 0;
}
