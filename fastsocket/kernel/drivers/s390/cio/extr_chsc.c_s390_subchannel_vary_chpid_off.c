
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dummy; } ;
struct chp_id {int dummy; } ;


 int __s390_subchannel_vary_chpid (struct subchannel*,struct chp_id,int ) ;

__attribute__((used)) static int s390_subchannel_vary_chpid_off(struct subchannel *sch, void *data)
{
 struct chp_id *chpid = data;

 __s390_subchannel_vary_chpid(sch, *chpid, 0);
 return 0;
}
