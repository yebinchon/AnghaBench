
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct TYPE_3__ {scalar_t__ lcv; struct timeval lcv_tv; } ;
typedef TYPE_1__ hil_mlc ;


 int do_gettimeofday (struct timeval*) ;

__attribute__((used)) static int hilse_init_lcv(hil_mlc *mlc, int unused)
{
 struct timeval tv;

 do_gettimeofday(&tv);

 if (mlc->lcv && (tv.tv_sec - mlc->lcv_tv.tv_sec) < 5)
  return -1;

 mlc->lcv_tv = tv;
 mlc->lcv = 0;

 return 0;
}
