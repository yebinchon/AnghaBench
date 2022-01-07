
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int ci_wbuffer; int ci_rbuffer; } ;


 int ci_ll_init (int *,int *,int) ;

int av7110_ca_init(struct av7110* av7110)
{
 return ci_ll_init(&av7110->ci_rbuffer, &av7110->ci_wbuffer, 8192);
}
