
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_fast_reg_page_list {int dummy; } ;
struct c4iw_fr_page_list {int size; TYPE_4__* dev; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_7__ {TYPE_2__ lldi; } ;
struct TYPE_8__ {TYPE_3__ rdev; } ;
struct TYPE_5__ {int dev; } ;


 int dma_free_coherent (int *,int ,struct c4iw_fr_page_list*,int ) ;
 int mapping ;
 int pci_unmap_addr (struct c4iw_fr_page_list*,int ) ;
 struct c4iw_fr_page_list* to_c4iw_fr_page_list (struct ib_fast_reg_page_list*) ;

void c4iw_free_fastreg_pbl(struct ib_fast_reg_page_list *ibpl)
{
 struct c4iw_fr_page_list *c4pl = to_c4iw_fr_page_list(ibpl);

 dma_free_coherent(&c4pl->dev->rdev.lldi.pdev->dev, c4pl->size,
     c4pl, pci_unmap_addr(c4pl, mapping));
}
