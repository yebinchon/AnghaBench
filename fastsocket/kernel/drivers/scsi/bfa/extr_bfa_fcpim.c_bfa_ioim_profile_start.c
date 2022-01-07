
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioim_s {int start_time; } ;


 int jiffies ;

void
bfa_ioim_profile_start(struct bfa_ioim_s *ioim)
{
 ioim->start_time = jiffies;
}
