
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MessageUnit_B {int dummy; } ;
struct AdapterControlBlock {int adapter_type; int dma_coherent_handle_hbb_mu; int pmuB; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;





 int dma_free_coherent (int *,int,int ,int ) ;

__attribute__((used)) static void arcmsr_free_hbb_mu(struct AdapterControlBlock *acb)
{
 switch (acb->adapter_type) {
 case 130:
 case 128:
  break;
 case 129:{
  dma_free_coherent(&acb->pdev->dev,
   sizeof(struct MessageUnit_B),
   acb->pmuB, acb->dma_coherent_handle_hbb_mu);
 }
 }
}
