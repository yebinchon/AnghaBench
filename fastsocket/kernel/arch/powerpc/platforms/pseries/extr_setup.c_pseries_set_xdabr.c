
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_DABRX_KERNEL ;
 int H_DABRX_USER ;
 int H_SET_XDABR ;
 int plpar_hcall_norets (int ,unsigned long,int) ;

__attribute__((used)) static int pseries_set_xdabr(unsigned long dabr)
{

 return plpar_hcall_norets(H_SET_XDABR, dabr,
   H_DABRX_KERNEL | H_DABRX_USER);
}
