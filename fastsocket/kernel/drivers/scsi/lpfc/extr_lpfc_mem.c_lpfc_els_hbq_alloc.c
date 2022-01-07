
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_hba {int lpfc_hbq_pool; } ;
struct TYPE_2__ {int virt; int phys; } ;
struct hbq_dmabuf {int size; TYPE_1__ dbuf; } ;


 int GFP_KERNEL ;
 int LPFC_BPL_SIZE ;
 int kfree (struct hbq_dmabuf*) ;
 struct hbq_dmabuf* kzalloc (int,int ) ;
 int pci_pool_alloc (int ,int ,int *) ;

struct hbq_dmabuf *
lpfc_els_hbq_alloc(struct lpfc_hba *phba)
{
 struct hbq_dmabuf *hbqbp;

 hbqbp = kzalloc(sizeof(struct hbq_dmabuf), GFP_KERNEL);
 if (!hbqbp)
  return ((void*)0);

 hbqbp->dbuf.virt = pci_pool_alloc(phba->lpfc_hbq_pool, GFP_KERNEL,
       &hbqbp->dbuf.phys);
 if (!hbqbp->dbuf.virt) {
  kfree(hbqbp);
  return ((void*)0);
 }
 hbqbp->size = LPFC_BPL_SIZE;
 return hbqbp;
}
