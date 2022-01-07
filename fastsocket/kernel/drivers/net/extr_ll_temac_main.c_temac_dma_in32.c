
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {int sdma_dcrs; } ;


 int dcr_read (int ,int) ;

__attribute__((used)) static u32 temac_dma_in32(struct temac_local *lp, int reg)
{
 return dcr_read(lp->sdma_dcrs, reg);
}
