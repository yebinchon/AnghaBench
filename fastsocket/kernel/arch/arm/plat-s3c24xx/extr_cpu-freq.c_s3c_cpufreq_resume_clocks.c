
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int (* resume_clocks ) () ;} ;


 TYPE_2__ cpu_cur ;
 int stub1 () ;

__attribute__((used)) static inline void s3c_cpufreq_resume_clocks(void)
{
 cpu_cur.info->resume_clocks();
}
