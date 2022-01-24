#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct ipath_user_sdma_pkt {int /*<<< orphan*/  naddr; } ;
struct ipath_devdata {TYPE_1__* pcidev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_5__ {int /*<<< orphan*/  mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 unsigned long PAGE_MASK ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ,int,struct page**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_user_sdma_pkt*,int /*<<< orphan*/ ,unsigned long,int const,int,int,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static int FUNC7(const struct ipath_devdata *dd,
				     struct ipath_user_sdma_pkt *pkt,
				     unsigned long addr, int tlen, int npages)
{
	struct page *pages[2];
	int j;
	int ret;

	ret = FUNC2(current, current->mm, addr,
			     npages, 0, 1, pages, NULL);

	if (ret != npages) {
		int i;

		for (i = 0; i < ret; i++)
			FUNC6(pages[i]);

		ret = -ENOMEM;
		goto done;
	}

	for (j = 0; j < npages; j++) {
		/* map the pages... */
		const int flen =
			FUNC4(addr, tlen);
		dma_addr_t dma_addr =
			FUNC0(&dd->pcidev->dev,
				     pages[j], 0, flen, DMA_TO_DEVICE);
		unsigned long fofs = addr & ~PAGE_MASK;

		if (FUNC1(&dd->pcidev->dev, dma_addr)) {
			ret = -ENOMEM;
			goto done;
		}

		FUNC3(pkt, pkt->naddr, fofs, flen, 1, 1,
					  pages[j], FUNC5(pages[j]),
					  dma_addr);

		pkt->naddr++;
		addr += flen;
		tlen -= flen;
	}

done:
	return ret;
}