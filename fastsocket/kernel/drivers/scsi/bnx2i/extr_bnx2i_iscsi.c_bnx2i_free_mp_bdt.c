
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2i_hba {int * dummy_buffer; int dummy_buf_dma; TYPE_1__* pcidev; int * mp_bd_tbl; int mp_bd_dma; } ;
struct TYPE_2__ {int dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void bnx2i_free_mp_bdt(struct bnx2i_hba *hba)
{
 if (hba->mp_bd_tbl) {
  dma_free_coherent(&hba->pcidev->dev, PAGE_SIZE,
      hba->mp_bd_tbl, hba->mp_bd_dma);
  hba->mp_bd_tbl = ((void*)0);
 }
 if (hba->dummy_buffer) {
  dma_free_coherent(&hba->pcidev->dev, PAGE_SIZE,
      hba->dummy_buffer, hba->dummy_buf_dma);
  hba->dummy_buffer = ((void*)0);
 }
  return;
}
