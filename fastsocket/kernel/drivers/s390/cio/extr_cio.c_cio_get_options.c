
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ inter; scalar_t__ prefetch; scalar_t__ suspend; } ;
struct subchannel {TYPE_1__ options; } ;


 int DOIO_ALLOW_SUSPEND ;
 int DOIO_DENY_PREFETCH ;
 int DOIO_SUPPRESS_INTER ;

int
cio_get_options (struct subchannel *sch)
{
       int flags;

       flags = 0;
       if (sch->options.suspend)
  flags |= DOIO_ALLOW_SUSPEND;
       if (sch->options.prefetch)
  flags |= DOIO_DENY_PREFETCH;
       if (sch->options.inter)
  flags |= DOIO_SUPPRESS_INTER;
       return flags;
}
