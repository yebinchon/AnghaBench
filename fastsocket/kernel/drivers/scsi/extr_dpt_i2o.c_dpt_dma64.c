
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dma_addr_t ;
struct TYPE_3__ {scalar_t__ dma64; } ;
typedef TYPE_1__ adpt_hba ;



__attribute__((used)) static inline int dpt_dma64(adpt_hba *pHba)
{
 return (sizeof(dma_addr_t) > 4 && (pHba)->dma64);
}
