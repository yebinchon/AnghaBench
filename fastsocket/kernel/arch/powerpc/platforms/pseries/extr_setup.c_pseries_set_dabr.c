
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_SET_DABR ;
 int plpar_hcall_norets (int ,unsigned long) ;

__attribute__((used)) static int pseries_set_dabr(unsigned long dabr)
{
 return plpar_hcall_norets(H_SET_DABR, dabr);
}
