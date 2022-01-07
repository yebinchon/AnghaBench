
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quicc {int cp_cr; int sdma_sdcr; } ;


 int CMD_FLAG ;
 scalar_t__ CPM_DATAONLY_BASE ;
 scalar_t__ CPM_DATAONLY_SIZE ;
 int SOFTWARE_RESET ;
 scalar_t__ _quicc_base ;
 scalar_t__ dp_alloc_base ;
 scalar_t__ dp_alloc_top ;
 struct quicc* pquicc ;

void m360_cpm_reset()
{


 pquicc = (struct quicc *)(_quicc_base);


 pquicc->cp_cr = (SOFTWARE_RESET | CMD_FLAG);


 while (pquicc->cp_cr & CMD_FLAG);





 pquicc->sdma_sdcr = 0x0740;




 dp_alloc_base = CPM_DATAONLY_BASE;
 dp_alloc_top = dp_alloc_base + CPM_DATAONLY_SIZE;
}
