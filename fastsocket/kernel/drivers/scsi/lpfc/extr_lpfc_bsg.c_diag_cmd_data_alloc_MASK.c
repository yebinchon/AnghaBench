#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ushort ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {scalar_t__ bdeSize; scalar_t__ bdeFlags; } ;
struct TYPE_6__ {void* w; TYPE_2__ f; } ;
struct ulp_bde64 {TYPE_3__ tus; void* addrHigh; void* addrLow; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;
struct TYPE_4__ {int /*<<< orphan*/  phys; scalar_t__ virt; int /*<<< orphan*/  list; } ;
struct lpfc_dmabufext {int size; int flag; TYPE_1__ dma; } ;

/* Variables and functions */
 scalar_t__ BUFF_TYPE_BDE_64I ; 
 int BUF_SZ_4K ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LPFC_BPL_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_dmabufext*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct lpfc_dmabufext* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct lpfc_dmabufext *
FUNC10(struct lpfc_hba *phba,
		   struct ulp_bde64 *bpl, uint32_t size,
		   int nocopydata)
{
	struct lpfc_dmabufext *mlist = NULL;
	struct lpfc_dmabufext *dmp;
	int cnt, offset = 0, i = 0;
	struct pci_dev *pcidev;

	pcidev = phba->pcidev;

	while (size) {
		/* We get chunks of 4K */
		if (size > BUF_SZ_4K)
			cnt = BUF_SZ_4K;
		else
			cnt = size;

		/* allocate struct lpfc_dmabufext buffer header */
		dmp = FUNC3(sizeof(struct lpfc_dmabufext), GFP_KERNEL);
		if (!dmp)
			goto out;

		FUNC0(&dmp->dma.list);

		/* Queue it to a linked list */
		if (mlist)
			FUNC5(&dmp->dma.list, &mlist->dma.list);
		else
			mlist = dmp;

		/* allocate buffer */
		dmp->dma.virt = FUNC2(&pcidev->dev,
						   cnt,
						   &(dmp->dma.phys),
						   GFP_KERNEL);

		if (!dmp->dma.virt)
			goto out;

		dmp->size = cnt;

		if (nocopydata) {
			bpl->tus.f.bdeFlags = 0;
			FUNC7(phba->pcidev,
				dmp->dma.phys, LPFC_BPL_SIZE, PCI_DMA_TODEVICE);

		} else {
			FUNC6((uint8_t *)dmp->dma.virt, 0, cnt);
			bpl->tus.f.bdeFlags = BUFF_TYPE_BDE_64I;
		}

		/* build buffer ptr list for IOCB */
		bpl->addrLow = FUNC4(FUNC9(dmp->dma.phys));
		bpl->addrHigh = FUNC4(FUNC8(dmp->dma.phys));
		bpl->tus.f.bdeSize = (ushort) cnt;
		bpl->tus.w = FUNC4(bpl->tus.w);
		bpl++;

		i++;
		offset += cnt;
		size -= cnt;
	}

	mlist->flag = i;
	return mlist;
out:
	FUNC1(phba, mlist);
	return NULL;
}