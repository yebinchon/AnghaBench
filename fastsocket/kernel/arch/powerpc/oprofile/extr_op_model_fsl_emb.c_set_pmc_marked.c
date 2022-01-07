
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMLCA_FCM0 ;
 int PMLCA_FCM1 ;
 int get_pmlca (int) ;
 int set_pmlca (int,int ) ;

__attribute__((used)) static void set_pmc_marked(int ctr, int mark0, int mark1)
{
 u32 pmlca = get_pmlca(ctr);

 if(mark0)
  pmlca &= ~PMLCA_FCM0;
 else
  pmlca |= PMLCA_FCM0;

 if(mark1)
  pmlca &= ~PMLCA_FCM1;
 else
  pmlca |= PMLCA_FCM1;

 set_pmlca(ctr, pmlca);
}
