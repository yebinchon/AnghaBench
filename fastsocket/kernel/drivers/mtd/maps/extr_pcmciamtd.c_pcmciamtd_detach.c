
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmciamtd_dev {TYPE_1__* mtd_info; } ;
struct pcmcia_device {struct pcmciamtd_dev* priv; } ;
struct TYPE_3__ {int index; } ;


 int DEBUG (int,char*,struct pcmcia_device*) ;
 int del_mtd_device (TYPE_1__*) ;
 int info (char*,int ) ;
 int map_destroy (TYPE_1__*) ;
 int pcmciamtd_release (struct pcmcia_device*) ;

__attribute__((used)) static void pcmciamtd_detach(struct pcmcia_device *link)
{
 struct pcmciamtd_dev *dev = link->priv;

 DEBUG(3, "link=0x%p", link);

 if(dev->mtd_info) {
  del_mtd_device(dev->mtd_info);
  map_destroy(dev->mtd_info);
  info("mtd%d: Removed", dev->mtd_info->index);
 }

 pcmciamtd_release(link);
}
