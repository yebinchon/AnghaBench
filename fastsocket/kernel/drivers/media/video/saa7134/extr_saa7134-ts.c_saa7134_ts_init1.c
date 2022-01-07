
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nr_bufs; int nr_packets; int pt_ts; } ;
struct TYPE_6__ {unsigned long data; int function; } ;
struct TYPE_4__ {int need_two; struct saa7134_dev* dev; TYPE_3__ timeout; int queue; } ;
struct saa7134_dev {TYPE_2__ ts; int pci; scalar_t__ ts_started; TYPE_1__ ts_q; } ;


 int INIT_LIST_HEAD (int *) ;
 int VIDEO_MAX_FRAME ;
 int init_timer (TYPE_3__*) ;
 int saa7134_buffer_timeout ;
 int saa7134_pgtable_alloc (int ,int *) ;
 int saa7134_ts_init_hw (struct saa7134_dev*) ;
 int ts_nr_packets ;
 int tsbufs ;

int saa7134_ts_init1(struct saa7134_dev *dev)
{

 if (tsbufs < 2)
  tsbufs = 2;
 if (tsbufs > VIDEO_MAX_FRAME)
  tsbufs = VIDEO_MAX_FRAME;
 if (ts_nr_packets < 4)
  ts_nr_packets = 4;
 if (ts_nr_packets > 312)
  ts_nr_packets = 312;
 dev->ts.nr_bufs = tsbufs;
 dev->ts.nr_packets = ts_nr_packets;

 INIT_LIST_HEAD(&dev->ts_q.queue);
 init_timer(&dev->ts_q.timeout);
 dev->ts_q.timeout.function = saa7134_buffer_timeout;
 dev->ts_q.timeout.data = (unsigned long)(&dev->ts_q);
 dev->ts_q.dev = dev;
 dev->ts_q.need_two = 1;
 dev->ts_started = 0;
 saa7134_pgtable_alloc(dev->pci,&dev->ts.pt_ts);


 saa7134_ts_init_hw(dev);

 return 0;
}
