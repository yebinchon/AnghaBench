
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcbit_dev {TYPE_1__* dev_if; int id; } ;
struct pcbit_chan {int id; scalar_t__ queued; } ;
struct TYPE_5__ {int arg; int command; int driver; } ;
typedef TYPE_2__ isdn_ctrl ;
struct TYPE_4__ {int (* statcallb ) (TYPE_2__*) ;} ;


 int ISDN_STAT_BSENT ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static __inline__ void
pcbit_fake_conf(struct pcbit_dev *dev, struct pcbit_chan *chan)
{
 isdn_ctrl ictl;

 if (chan->queued) {
  chan->queued--;

  ictl.driver = dev->id;
  ictl.command = ISDN_STAT_BSENT;
  ictl.arg = chan->id;
  dev->dev_if->statcallb(&ictl);
 }
}
