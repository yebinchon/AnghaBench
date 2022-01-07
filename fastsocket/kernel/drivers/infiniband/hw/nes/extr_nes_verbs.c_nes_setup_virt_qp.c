
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef unsigned long u32 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_qp_context {int dummy; } ;
struct TYPE_2__ {int sq_pbase; int sq_vbase; int rq_pbase; void* rq_vbase; scalar_t__ q2_pbase; int * q2_vbase; } ;
struct nes_qp {int qp_mem_size; int sq_kmapped; TYPE_1__ hwqp; scalar_t__ nesqp_context_pbase; int * nesqp_context; scalar_t__ page; int * pbl_vbase; scalar_t__ pbl_pbase; } ;
struct nes_pbl {int pbl_size; scalar_t__ pbl_pbase; int * pbl_vbase; scalar_t__ page; } ;
struct nes_hw_qp_wqe {int dummy; } ;
struct nes_device {int pcidev; struct nes_adapter* nesadapter; } ;
struct nes_adapter {int pbl_lock; int free_256pbl; } ;
typedef int __le64 ;
typedef int __le32 ;


 int ENOMEM ;
 int NES_DBG_QP ;
 int PAGE_SIZE ;
 int kfree (struct nes_pbl*) ;
 int kmap (scalar_t__) ;
 int kunmap (scalar_t__) ;
 int le32_to_cpu (int ) ;
 int max (unsigned long,unsigned long) ;
 int memset (int *,int ,int) ;
 int nes_debug (int ,char*,...) ;
 void* pci_alloc_consistent (int ,int,scalar_t__*) ;
 int pci_free_consistent (int ,int,int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nes_setup_virt_qp(struct nes_qp *nesqp, struct nes_pbl *nespbl,
  struct nes_vnic *nesvnic, int sq_size, int rq_size)
{
 unsigned long flags;
 void *mem;
 __le64 *pbl = ((void*)0);
 __le64 *tpbl;
 __le64 *pblbuffer;
 struct nes_device *nesdev = nesvnic->nesdev;
 struct nes_adapter *nesadapter = nesdev->nesadapter;
 u32 pbl_entries;
 u8 rq_pbl_entries;
 u8 sq_pbl_entries;

 pbl_entries = nespbl->pbl_size >> 3;
 nes_debug(NES_DBG_QP, "Userspace PBL, pbl_size=%u, pbl_entries = %d pbl_vbase=%p, pbl_pbase=%lx\n",
   nespbl->pbl_size, pbl_entries,
   (void *)nespbl->pbl_vbase,
   (unsigned long) nespbl->pbl_pbase);
 pbl = (__le64 *) nespbl->pbl_vbase;


 rq_pbl_entries = (rq_size * sizeof(struct nes_hw_qp_wqe)) >> 12;
 sq_pbl_entries = (sq_size * sizeof(struct nes_hw_qp_wqe)) >> 12;
 nesqp->hwqp.sq_pbase = (le32_to_cpu(((__le32 *)pbl)[0])) | ((u64)((le32_to_cpu(((__le32 *)pbl)[1]))) << 32);
 if (!nespbl->page) {
  nes_debug(NES_DBG_QP, "QP nespbl->page is NULL \n");
  kfree(nespbl);
  return -ENOMEM;
 }

 nesqp->hwqp.sq_vbase = kmap(nespbl->page);
 nesqp->page = nespbl->page;
 if (!nesqp->hwqp.sq_vbase) {
  nes_debug(NES_DBG_QP, "QP sq_vbase kmap failed\n");
  kfree(nespbl);
  return -ENOMEM;
 }



 pbl += sq_pbl_entries;
 nesqp->hwqp.rq_pbase = (le32_to_cpu(((__le32 *)pbl)[0])) | ((u64)((le32_to_cpu(((__le32 *)pbl)[1]))) << 32);



 nes_debug(NES_DBG_QP, "QP sq_vbase= %p sq_pbase=%lx rq_vbase=%p rq_pbase=%lx\n",
    nesqp->hwqp.sq_vbase, (unsigned long) nesqp->hwqp.sq_pbase,
    nesqp->hwqp.rq_vbase, (unsigned long) nesqp->hwqp.rq_pbase);
 spin_lock_irqsave(&nesadapter->pbl_lock, flags);
 if (!nesadapter->free_256pbl) {
  pci_free_consistent(nesdev->pcidev, nespbl->pbl_size, nespbl->pbl_vbase,
    nespbl->pbl_pbase);
  spin_unlock_irqrestore(&nesadapter->pbl_lock, flags);
  kunmap(nesqp->page);
  kfree(nespbl);
  return -ENOMEM;
 }
 nesadapter->free_256pbl--;
 spin_unlock_irqrestore(&nesadapter->pbl_lock, flags);

 nesqp->pbl_vbase = pci_alloc_consistent(nesdev->pcidev, 256, &nesqp->pbl_pbase);
 pblbuffer = nesqp->pbl_vbase;
 if (!nesqp->pbl_vbase) {

  pci_free_consistent(nesdev->pcidev, nespbl->pbl_size, nespbl->pbl_vbase,
        nespbl->pbl_pbase);
  kfree(nespbl);
  spin_lock_irqsave(&nesadapter->pbl_lock, flags);
  nesadapter->free_256pbl++;
  spin_unlock_irqrestore(&nesadapter->pbl_lock, flags);
  kunmap(nesqp->page);
  return -ENOMEM;
 }
 memset(nesqp->pbl_vbase, 0, 256);

 tpbl = pblbuffer + 16;
 pbl = (__le64 *)nespbl->pbl_vbase;
 while (sq_pbl_entries--)
  *tpbl++ = *pbl++;
 tpbl = pblbuffer;
 while (rq_pbl_entries--)
  *tpbl++ = *pbl++;


 pci_free_consistent(nesdev->pcidev, nespbl->pbl_size, nespbl->pbl_vbase,
       nespbl->pbl_pbase);
 kfree(nespbl);

 nesqp->qp_mem_size =
   max((u32)sizeof(struct nes_qp_context), ((u32)256)) + 256;

 nesqp->qp_mem_size += PAGE_SIZE - 1;
 nesqp->qp_mem_size &= ~(PAGE_SIZE - 1);

 mem = pci_alloc_consistent(nesdev->pcidev, nesqp->qp_mem_size,
   &nesqp->hwqp.q2_pbase);

 if (!mem) {
  pci_free_consistent(nesdev->pcidev, 256, nesqp->pbl_vbase, nesqp->pbl_pbase);
  nesqp->pbl_vbase = ((void*)0);
  spin_lock_irqsave(&nesadapter->pbl_lock, flags);
  nesadapter->free_256pbl++;
  spin_unlock_irqrestore(&nesadapter->pbl_lock, flags);
  kunmap(nesqp->page);
  return -ENOMEM;
 }
 nesqp->sq_kmapped = 1;
 nesqp->hwqp.q2_vbase = mem;
 mem += 256;
 memset(nesqp->hwqp.q2_vbase, 0, 256);
 nesqp->nesqp_context = mem;
 memset(nesqp->nesqp_context, 0, sizeof(*nesqp->nesqp_context));
 nesqp->nesqp_context_pbase = nesqp->hwqp.q2_pbase + 256;

 return 0;
}
