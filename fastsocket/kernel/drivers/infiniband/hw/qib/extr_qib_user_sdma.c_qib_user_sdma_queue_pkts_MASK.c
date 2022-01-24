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
typedef  int /*<<< orphan*/  u32 ;
struct qib_user_sdma_queue {int /*<<< orphan*/  pkt_slab; int /*<<< orphan*/  header_cache; int /*<<< orphan*/  counter; } ;
struct qib_user_sdma_pkt {int /*<<< orphan*/  list; } ;
struct qib_devdata {TYPE_1__* pcidev; } ;
struct page {int dummy; } ;
struct list_head {int dummy; } ;
struct iovec {size_t iov_len; scalar_t__ iov_base; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long const PAGE_MASK ; 
 size_t PAGE_SIZE ; 
 unsigned int QIB_PBC_LENGTH_MASK ; 
 size_t QIB_USER_SDMA_EXP_HEADER_LENGTH ; 
 size_t QIB_USER_SDMA_MIN_HEADER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct page*) ; 
 struct qib_user_sdma_pkt* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct qib_user_sdma_pkt*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct qib_user_sdma_queue*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct qib_user_sdma_pkt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,struct page*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct qib_devdata const*,struct qib_user_sdma_queue*,struct qib_user_sdma_pkt*,struct iovec const*,int,int) ; 

__attribute__((used)) static int FUNC17(const struct qib_devdata *dd,
				    struct qib_user_sdma_queue *pq,
				    struct list_head *list,
				    const struct iovec *iov,
				    unsigned long niov,
				    int maxpkts)
{
	unsigned long idx = 0;
	int ret = 0;
	int npkts = 0;
	struct page *page = NULL;
	__le32 *pbc;
	dma_addr_t dma_addr;
	struct qib_user_sdma_pkt *pkt = NULL;
	size_t len;
	size_t nw;
	u32 counter = pq->counter;
	int dma_mapped = 0;

	while (idx < niov && npkts < maxpkts) {
		const unsigned long addr = (unsigned long) iov[idx].iov_base;
		const unsigned long idx_save = idx;
		unsigned pktnw;
		unsigned pktnwc;
		int nfrags = 0;
		int npages = 0;
		int cfur;

		dma_mapped = 0;
		len = iov[idx].iov_len;
		nw = len >> 2;
		page = NULL;

		pkt = FUNC9(pq->pkt_slab, GFP_KERNEL);
		if (!pkt) {
			ret = -ENOMEM;
			goto free_list;
		}

		if (len < QIB_USER_SDMA_MIN_HEADER_LENGTH ||
		    len > PAGE_SIZE || len & 3 || addr & 3) {
			ret = -EINVAL;
			goto free_pkt;
		}

		if (len == QIB_USER_SDMA_EXP_HEADER_LENGTH)
			pbc = FUNC5(pq->header_cache, GFP_KERNEL,
					     &dma_addr);
		else
			pbc = NULL;

		if (!pbc) {
			page = FUNC1(GFP_KERNEL);
			if (!page) {
				ret = -ENOMEM;
				goto free_pkt;
			}
			pbc = FUNC8(page);
		}

		cfur = FUNC2(pbc, iov[idx].iov_base, len);
		if (cfur) {
			ret = -EFAULT;
			goto free_pbc;
		}

		/*
		 * This assignment is a bit strange.  it's because the
		 * the pbc counts the number of 32 bit words in the full
		 * packet _except_ the first word of the pbc itself...
		 */
		pktnwc = nw - 1;

		/*
		 * pktnw computation yields the number of 32 bit words
		 * that the caller has indicated in the PBC.  note that
		 * this is one less than the total number of words that
		 * goes to the send DMA engine as the first 32 bit word
		 * of the PBC itself is not counted.  Armed with this count,
		 * we can verify that the packet is consistent with the
		 * iovec lengths.
		 */
		pktnw = FUNC12(*pbc) & QIB_PBC_LENGTH_MASK;
		if (pktnw < pktnwc || pktnw > pktnwc + (PAGE_SIZE >> 2)) {
			ret = -EINVAL;
			goto free_pbc;
		}

		idx++;
		while (pktnwc < pktnw && idx < niov) {
			const size_t slen = iov[idx].iov_len;
			const unsigned long faddr =
				(unsigned long) iov[idx].iov_base;

			if (slen & 3 || faddr & 3 || !slen ||
			    slen > PAGE_SIZE) {
				ret = -EINVAL;
				goto free_pbc;
			}

			npages++;
			if ((faddr & PAGE_MASK) !=
			    ((faddr + slen - 1) & PAGE_MASK))
				npages++;

			pktnwc += slen >> 2;
			idx++;
			nfrags++;
		}

		if (pktnwc != pktnw) {
			ret = -EINVAL;
			goto free_pbc;
		}

		if (page) {
			dma_addr = FUNC3(&dd->pcidev->dev,
						page, 0, len, DMA_TO_DEVICE);
			if (FUNC4(&dd->pcidev->dev, dma_addr)) {
				ret = -ENOMEM;
				goto free_pbc;
			}

			dma_mapped = 1;
		}

		FUNC15(pkt, counter, 0, len, dma_mapped,
					  page, pbc, dma_addr);

		if (nfrags) {
			ret = FUNC16(dd, pq, pkt,
							 iov + idx_save + 1,
							 nfrags, npages);
			if (ret < 0)
				goto free_pbc_dma;
		}

		counter++;
		npkts++;

		FUNC13(&pkt->list, list);
	}

	ret = idx;
	goto done;

free_pbc_dma:
	if (dma_mapped)
		FUNC7(&dd->pcidev->dev, dma_addr, len, DMA_TO_DEVICE);
free_pbc:
	if (page) {
		FUNC11(page);
		FUNC0(page);
	} else
		FUNC6(pq->header_cache, pbc, dma_addr);
free_pkt:
	FUNC10(pq->pkt_slab, pkt);
free_list:
	FUNC14(&dd->pcidev->dev, pq, list);
done:
	return ret;
}