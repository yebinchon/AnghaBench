
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lcv; } ;
typedef TYPE_1__ hil_mlc ;



__attribute__((used)) static int hilse_inc_lcv(hil_mlc *mlc, int lim)
{
 return mlc->lcv++ >= lim ? -1 : 0;
}
