#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ bdeSize; int /*<<< orphan*/  bdeFlags; } ;
struct TYPE_4__ {void* w; TYPE_1__ f; } ;
struct ulp_bde64 {TYPE_2__ tus; void* addrHigh; void* addrLow; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  list; void* virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFF_TYPE_BDE_64I ; 
 int FCELSSIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MEM_PRI ; 
 int /*<<< orphan*/  SLI_CTNS_GFF_ID ; 
 int /*<<< orphan*/  SLI_CTNS_GID_FT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_dmabuf*) ; 
 struct lpfc_dmabuf* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,struct lpfc_dmabuf*) ; 
 void* FUNC7 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct lpfc_dmabuf *
FUNC10(struct lpfc_hba *phba, int cmdcode, struct ulp_bde64 *bpl,
		  uint32_t size, int *entries)
{
	struct lpfc_dmabuf *mlist = NULL;
	struct lpfc_dmabuf *mp;
	int cnt, i = 0;

	/* We get chunks of FCELSSIZE */
	cnt = size > FCELSSIZE ? FCELSSIZE: size;

	while (size) {
		/* Allocate buffer for rsp payload */
		mp = FUNC3(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
		if (!mp) {
			if (mlist)
				FUNC6(phba, mlist);
			return NULL;
		}

		FUNC0(&mp->list);

		if (cmdcode == FUNC1(SLI_CTNS_GID_FT) ||
		    cmdcode == FUNC1(SLI_CTNS_GFF_ID))
			mp->virt = FUNC7(phba, MEM_PRI, &(mp->phys));
		else
			mp->virt = FUNC7(phba, 0, &(mp->phys));

		if (!mp->virt) {
			FUNC2(mp);
			if (mlist)
				FUNC6(phba, mlist);
			return NULL;
		}

		/* Queue it to a linked list */
		if (!mlist)
			mlist = mp;
		else
			FUNC5(&mp->list, &mlist->list);

		bpl->tus.f.bdeFlags = BUFF_TYPE_BDE_64I;
		/* build buffer ptr list for IOCB */
		bpl->addrLow = FUNC4(FUNC9(mp->phys) );
		bpl->addrHigh = FUNC4(FUNC8(mp->phys) );
		bpl->tus.f.bdeSize = (uint16_t) cnt;
		bpl->tus.w = FUNC4(bpl->tus.w);
		bpl++;

		i++;
		size -= cnt;
	}

	*entries = i;
	return mlist;
}