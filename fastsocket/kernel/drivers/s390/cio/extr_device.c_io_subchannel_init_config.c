
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csense; } ;
struct subchannel {TYPE_1__ config; } ;


 int memset (TYPE_1__*,int ,int) ;

void io_subchannel_init_config(struct subchannel *sch)
{
 memset(&sch->config, 0, sizeof(sch->config));
 sch->config.csense = 1;
}
