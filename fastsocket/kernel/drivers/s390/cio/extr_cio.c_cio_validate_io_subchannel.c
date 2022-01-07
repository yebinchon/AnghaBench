
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int schib; } ;


 int ENODEV ;
 int cio_check_devno_blacklisted (struct subchannel*) ;
 int css_sch_is_valid (int *) ;

__attribute__((used)) static int cio_validate_io_subchannel(struct subchannel *sch)
{

 if (!css_sch_is_valid(&sch->schib))
  return -ENODEV;


 return cio_check_devno_blacklisted(sch);
}
