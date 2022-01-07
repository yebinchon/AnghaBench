
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ushort ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ bdeSize; scalar_t__ bdeFlags; } ;
struct TYPE_6__ {void* w; TYPE_2__ f; } ;
struct ulp_bde64 {TYPE_3__ tus; void* addrHigh; void* addrLow; } ;
struct pci_dev {int dev; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;
struct TYPE_4__ {int phys; scalar_t__ virt; int list; } ;
struct lpfc_dmabufext {int size; int flag; TYPE_1__ dma; } ;


 scalar_t__ BUFF_TYPE_BDE_64I ;
 int BUF_SZ_4K ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int LPFC_BPL_SIZE ;
 int PCI_DMA_TODEVICE ;
 int diag_cmd_data_free (struct lpfc_hba*,struct lpfc_dmabufext*) ;
 scalar_t__ dma_alloc_coherent (int *,int,int *,int ) ;
 struct lpfc_dmabufext* kmalloc (int,int ) ;
 void* le32_to_cpu (void*) ;
 int list_add_tail (int *,int *) ;
 int memset (int *,int ,int) ;
 int pci_dma_sync_single_for_device (struct pci_dev*,int ,int ,int ) ;
 void* putPaddrHigh (int ) ;
 void* putPaddrLow (int ) ;

__attribute__((used)) static struct lpfc_dmabufext *
diag_cmd_data_alloc(struct lpfc_hba *phba,
     struct ulp_bde64 *bpl, uint32_t size,
     int nocopydata)
{
 struct lpfc_dmabufext *mlist = ((void*)0);
 struct lpfc_dmabufext *dmp;
 int cnt, offset = 0, i = 0;
 struct pci_dev *pcidev;

 pcidev = phba->pcidev;

 while (size) {

  if (size > BUF_SZ_4K)
   cnt = BUF_SZ_4K;
  else
   cnt = size;


  dmp = kmalloc(sizeof(struct lpfc_dmabufext), GFP_KERNEL);
  if (!dmp)
   goto out;

  INIT_LIST_HEAD(&dmp->dma.list);


  if (mlist)
   list_add_tail(&dmp->dma.list, &mlist->dma.list);
  else
   mlist = dmp;


  dmp->dma.virt = dma_alloc_coherent(&pcidev->dev,
         cnt,
         &(dmp->dma.phys),
         GFP_KERNEL);

  if (!dmp->dma.virt)
   goto out;

  dmp->size = cnt;

  if (nocopydata) {
   bpl->tus.f.bdeFlags = 0;
   pci_dma_sync_single_for_device(phba->pcidev,
    dmp->dma.phys, LPFC_BPL_SIZE, PCI_DMA_TODEVICE);

  } else {
   memset((uint8_t *)dmp->dma.virt, 0, cnt);
   bpl->tus.f.bdeFlags = BUFF_TYPE_BDE_64I;
  }


  bpl->addrLow = le32_to_cpu(putPaddrLow(dmp->dma.phys));
  bpl->addrHigh = le32_to_cpu(putPaddrHigh(dmp->dma.phys));
  bpl->tus.f.bdeSize = (ushort) cnt;
  bpl->tus.w = le32_to_cpu(bpl->tus.w);
  bpl++;

  i++;
  offset += cnt;
  size -= cnt;
 }

 mlist->flag = i;
 return mlist;
out:
 diag_cmd_data_free(phba, mlist);
 return ((void*)0);
}
