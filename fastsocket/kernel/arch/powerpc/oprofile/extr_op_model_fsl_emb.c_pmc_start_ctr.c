
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMLCA_CE ;
 int PMLCA_FC ;
 int get_pmlca (int) ;
 int set_pmlca (int,int ) ;

__attribute__((used)) static void pmc_start_ctr(int ctr, int enable)
{
 u32 pmlca = get_pmlca(ctr);

 pmlca &= ~PMLCA_FC;

 if (enable)
  pmlca |= PMLCA_CE;
 else
  pmlca &= ~PMLCA_CE;

 set_pmlca(ctr, pmlca);
}
