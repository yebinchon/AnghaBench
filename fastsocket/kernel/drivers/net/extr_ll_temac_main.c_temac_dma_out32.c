
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {int sdma_dcrs; } ;


 int dcr_write (int ,int,int ) ;

__attribute__((used)) static void temac_dma_out32(struct temac_local *lp, int reg, u32 value)
{
 dcr_write(lp->sdma_dcrs, reg, value);
}
