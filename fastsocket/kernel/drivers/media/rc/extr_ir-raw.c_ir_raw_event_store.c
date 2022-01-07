
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {TYPE_1__* raw; } ;
struct ir_raw_event {int pulse; int duration; } ;
struct TYPE_2__ {int kfifo; } ;


 int EINVAL ;
 int ENOMEM ;
 int IR_dprintk (int,char*,int ,int ) ;
 int TO_STR (int ) ;
 int TO_US (int ) ;
 int __kfifo_put (int ,void*,int) ;

int ir_raw_event_store(struct rc_dev *dev, struct ir_raw_event *ev)
{
 if (!dev->raw)
  return -EINVAL;

 IR_dprintk(2, "sample: (%05dus %s)\n",
     TO_US(ev->duration), TO_STR(ev->pulse));

 if (__kfifo_put(dev->raw->kfifo, (void *)ev, sizeof(*ev)) != sizeof(*ev))
  return -ENOMEM;

 return 0;
}
