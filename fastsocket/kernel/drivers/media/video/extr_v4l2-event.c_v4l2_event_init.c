
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fh {TYPE_1__* events; } ;
struct TYPE_2__ {int sequence; int subscribed; int available; int free; int wait; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 TYPE_1__* kzalloc (int,int ) ;

int v4l2_event_init(struct v4l2_fh *fh)
{
 fh->events = kzalloc(sizeof(*fh->events), GFP_KERNEL);
 if (fh->events == ((void*)0))
  return -ENOMEM;

 init_waitqueue_head(&fh->events->wait);

 INIT_LIST_HEAD(&fh->events->free);
 INIT_LIST_HEAD(&fh->events->available);
 INIT_LIST_HEAD(&fh->events->subscribed);

 fh->events->sequence = -1;

 return 0;
}
