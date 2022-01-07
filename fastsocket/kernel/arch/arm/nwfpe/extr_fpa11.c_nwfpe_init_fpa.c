
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef union fp_state {int dummy; } fp_state ;
struct TYPE_3__ {int initflag; } ;
typedef TYPE_1__ FPA11 ;


 int memset (TYPE_1__*,int ,int) ;
 int printk (char*) ;
 int resetFPA11 () ;

void nwfpe_init_fpa(union fp_state *fp)
{
 FPA11 *fpa11 = (FPA11 *)fp;



  memset(fpa11, 0, sizeof(FPA11));
 resetFPA11();
 fpa11->initflag = 1;
}
