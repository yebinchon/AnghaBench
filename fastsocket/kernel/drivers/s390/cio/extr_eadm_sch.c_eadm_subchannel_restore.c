
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct subchannel {int dummy; } ;


 int cio_enable_subchannel (struct subchannel*,int ) ;

__attribute__((used)) static int eadm_subchannel_restore(struct subchannel *sch)
{
 return cio_enable_subchannel(sch, (u32)(unsigned long)sch);
}
