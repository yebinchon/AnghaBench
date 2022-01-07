
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fh {TYPE_1__* events; } ;
struct TYPE_2__ {int navailable; } ;



int v4l2_event_pending(struct v4l2_fh *fh)
{
 return fh->events->navailable;
}
