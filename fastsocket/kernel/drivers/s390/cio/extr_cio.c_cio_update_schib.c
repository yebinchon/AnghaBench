
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int schib; int schid; } ;
struct schib {int dummy; } ;
typedef int schib ;


 int ENODEV ;
 int css_sch_is_valid (struct schib*) ;
 int memcpy (int *,struct schib*,int) ;
 scalar_t__ stsch_err (int ,struct schib*) ;

int cio_update_schib(struct subchannel *sch)
{
 struct schib schib;

 if (stsch_err(sch->schid, &schib) || !css_sch_is_valid(&schib))
  return -ENODEV;

 memcpy(&sch->schib, &schib, sizeof(schib));
 return 0;
}
