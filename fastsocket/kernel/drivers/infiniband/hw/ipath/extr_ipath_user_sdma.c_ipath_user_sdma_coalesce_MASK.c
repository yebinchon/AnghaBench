#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct ipath_user_sdma_pkt {int naddr; } ;
struct ipath_devdata {TYPE_1__* pcidev; } ;
struct iovec {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipath_user_sdma_pkt*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct page*,void*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(const struct ipath_devdata *dd,
				    struct ipath_user_sdma_pkt *pkt,
				    const struct iovec *iov,
				    unsigned long niov) {
	int ret = 0;
	struct page *page = FUNC1(GFP_KERNEL);
	void *mpage_save;
	char *mpage;
	int i;
	int len = 0;
	dma_addr_t dma_addr;

	if (!page) {
		ret = -ENOMEM;
		goto done;
	}

	mpage = FUNC6(page);
	mpage_save = mpage;
	for (i = 0; i < niov; i++) {
		int cfur;

		cfur = FUNC2(mpage,
				      iov[i].iov_base, iov[i].iov_len);
		if (cfur) {
			ret = -EFAULT;
			goto free_unmap;
		}

		mpage += iov[i].iov_len;
		len += iov[i].iov_len;
	}

	dma_addr = FUNC3(&dd->pcidev->dev, page, 0, len,
				DMA_TO_DEVICE);
	if (FUNC4(&dd->pcidev->dev, dma_addr)) {
		ret = -ENOMEM;
		goto free_unmap;
	}

	FUNC5(pkt, 1, 0, len, 0, 1, page, mpage_save,
				  dma_addr);
	pkt->naddr = 2;

	goto done;

free_unmap:
	FUNC7(page);
	FUNC0(page);
done:
	return ret;
}