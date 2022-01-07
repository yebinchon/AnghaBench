
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int ts; } ;
struct TYPE_4__ {scalar_t__ output; } ;
struct TYPE_5__ {TYPE_1__ pes; } ;
struct dmxdev_filter {scalar_t__ type; scalar_t__ state; TYPE_3__ feed; TYPE_2__ params; } ;
struct dmxdev_feed {int next; int pid; } ;
struct dmxdev {int dummy; } ;


 scalar_t__ DMXDEV_STATE_GO ;
 scalar_t__ DMXDEV_STATE_SET ;
 scalar_t__ DMXDEV_TYPE_PES ;
 scalar_t__ DMX_OUT_TSDEMUX_TAP ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dvb_dmxdev_start_feed (struct dmxdev*,struct dmxdev_filter*,struct dmxdev_feed*) ;
 struct dmxdev_feed* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static int dvb_dmxdev_add_pid(struct dmxdev *dmxdev,
         struct dmxdev_filter *filter, u16 pid)
{
 struct dmxdev_feed *feed;

 if ((filter->type != DMXDEV_TYPE_PES) ||
     (filter->state < DMXDEV_STATE_SET))
  return -EINVAL;


 if ((filter->params.pes.output != DMX_OUT_TSDEMUX_TAP) &&
     (!list_empty(&filter->feed.ts)))
  return -EINVAL;

 feed = kzalloc(sizeof(struct dmxdev_feed), GFP_KERNEL);
 if (feed == ((void*)0))
  return -ENOMEM;

 feed->pid = pid;
 list_add(&feed->next, &filter->feed.ts);

 if (filter->state >= DMXDEV_STATE_GO)
  return dvb_dmxdev_start_feed(dmxdev, filter, feed);

 return 0;
}
