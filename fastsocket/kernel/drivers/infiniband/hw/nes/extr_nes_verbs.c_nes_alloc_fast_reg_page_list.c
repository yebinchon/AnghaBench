
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct TYPE_2__ {scalar_t__ paddr; int kva; } ;
struct ib_fast_reg_page_list {int max_page_list_len; int * page_list; } ;
struct nes_ib_fast_reg_page_list {TYPE_1__ nes_wqe_pbl; struct ib_fast_reg_page_list ibfrpl; int pbl; } ;
struct nes_device {int pcidev; } ;
struct ib_device {int dummy; } ;


 int E2BIG ;
 int ENOMEM ;
 struct ib_fast_reg_page_list* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int NES_4K_PBL_CHUNK_SIZE ;
 int NES_DBG_MR ;
 int kfree (struct nes_ib_fast_reg_page_list*) ;
 struct nes_ib_fast_reg_page_list* kmalloc (int,int ) ;
 int nes_debug (int ,char*,struct nes_ib_fast_reg_page_list*,struct ib_fast_reg_page_list*,int *,int ,unsigned long long) ;
 int pci_alloc_consistent (int ,int,scalar_t__*) ;
 struct nes_vnic* to_nesvnic (struct ib_device*) ;

__attribute__((used)) static struct ib_fast_reg_page_list *nes_alloc_fast_reg_page_list(
       struct ib_device *ibdev,
       int page_list_len)
{
 struct nes_vnic *nesvnic = to_nesvnic(ibdev);
 struct nes_device *nesdev = nesvnic->nesdev;
 struct ib_fast_reg_page_list *pifrpl;
 struct nes_ib_fast_reg_page_list *pnesfrpl;

 if (page_list_len > (NES_4K_PBL_CHUNK_SIZE / sizeof(u64)))
  return ERR_PTR(-E2BIG);




 pnesfrpl = kmalloc(sizeof(struct nes_ib_fast_reg_page_list) +
      page_list_len * sizeof(u64), GFP_KERNEL);

 if (!pnesfrpl)
  return ERR_PTR(-ENOMEM);

 pifrpl = &pnesfrpl->ibfrpl;
 pifrpl->page_list = &pnesfrpl->pbl;
 pifrpl->max_page_list_len = page_list_len;



 pnesfrpl->nes_wqe_pbl.kva = pci_alloc_consistent(nesdev->pcidev,
        page_list_len * sizeof(u64),
        &pnesfrpl->nes_wqe_pbl.paddr);

 if (!pnesfrpl->nes_wqe_pbl.kva) {
  kfree(pnesfrpl);
  return ERR_PTR(-ENOMEM);
 }
 nes_debug(NES_DBG_MR, "nes_alloc_fast_reg_pbl: nes_frpl = %p, "
    "ibfrpl = %p, ibfrpl.page_list = %p, pbl.kva = %p, "
    "pbl.paddr = %llx\n", pnesfrpl, &pnesfrpl->ibfrpl,
    pnesfrpl->ibfrpl.page_list, pnesfrpl->nes_wqe_pbl.kva,
    (unsigned long long) pnesfrpl->nes_wqe_pbl.paddr);

 return pifrpl;
}
