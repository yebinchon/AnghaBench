
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int suspend; int prefetch; int inter; } ;
struct subchannel {TYPE_1__ options; } ;


 int DOIO_ALLOW_SUSPEND ;
 int DOIO_DENY_PREFETCH ;
 int DOIO_SUPPRESS_INTER ;

int
cio_set_options (struct subchannel *sch, int flags)
{
       sch->options.suspend = (flags & DOIO_ALLOW_SUSPEND) != 0;
       sch->options.prefetch = (flags & DOIO_DENY_PREFETCH) != 0;
       sch->options.inter = (flags & DOIO_SUPPRESS_INTER) != 0;
       return 0;
}
