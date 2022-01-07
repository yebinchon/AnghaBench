
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msr {int dummy; } ;


 int free_percpu (struct msr*) ;

void msrs_free(struct msr *msrs)
{
 free_percpu(msrs);
}
