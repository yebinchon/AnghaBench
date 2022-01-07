
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int ci_wbuffer; int ci_rbuffer; } ;


 int ci_ll_release (int *,int *) ;

void av7110_ca_exit(struct av7110* av7110)
{
 ci_ll_release(&av7110->ci_rbuffer, &av7110->ci_wbuffer);
}
