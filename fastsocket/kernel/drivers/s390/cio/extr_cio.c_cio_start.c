
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dummy; } ;
struct ccw1 {int dummy; } ;
typedef int __u8 ;


 int PAGE_DEFAULT_KEY ;
 int cio_start_key (struct subchannel*,struct ccw1*,int ,int ) ;

int
cio_start (struct subchannel *sch, struct ccw1 *cpa, __u8 lpm)
{
 return cio_start_key(sch, cpa, lpm, PAGE_DEFAULT_KEY);
}
