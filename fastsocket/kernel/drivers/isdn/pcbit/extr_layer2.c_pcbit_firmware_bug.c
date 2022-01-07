
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcbit_dev {struct pcbit_chan* b2; struct pcbit_chan* b1; } ;
struct pcbit_chan {scalar_t__ fsm_state; } ;


 scalar_t__ ST_ACTIVE ;
 int pcbit_fake_conf (struct pcbit_dev*,struct pcbit_chan*) ;

__attribute__((used)) static void
pcbit_firmware_bug(struct pcbit_dev *dev)
{
 struct pcbit_chan *chan;

 chan = dev->b1;

 if (chan->fsm_state == ST_ACTIVE) {
  pcbit_fake_conf(dev, chan);
 }
 chan = dev->b2;

 if (chan->fsm_state == ST_ACTIVE) {
  pcbit_fake_conf(dev, chan);
 }
}
