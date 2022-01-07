
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ena; } ;
struct TYPE_4__ {int scsw; TYPE_1__ pmcw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct device {int dummy; } ;


 int scsw_fctl (int *) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static int chsc_subchannel_match_next_free(struct device *dev, void *data)
{
 struct subchannel *sch = to_subchannel(dev);

 return sch->schib.pmcw.ena && !scsw_fctl(&sch->schib.scsw);
}
