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
struct mm_page {size_t headcnt; size_t cnt; int idx; struct bio* bio; struct mm_dma_desc* desc; } ;
struct mm_dma_desc {int /*<<< orphan*/  transfer_size; int /*<<< orphan*/  local_addr; int /*<<< orphan*/  data_dma_handle; int /*<<< orphan*/  sem_control_bits; } ;
struct cardinfo {unsigned int dma_status; size_t Active; int init_size; int mm_size; int /*<<< orphan*/  lock; scalar_t__ check_batteries; TYPE_1__* dev; struct mm_page* mm_pages; } ;
struct bio {scalar_t__ bi_vcnt; scalar_t__ bi_idx; struct bio* bi_next; int /*<<< orphan*/  bi_rw; int /*<<< orphan*/  bi_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  bv_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_RW ; 
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int DEBUG_LED_ON_TRANSFER ; 
 int DMASCR_DMA_COMPLETE ; 
 int DMASCR_HARD_ERROR ; 
 int DMASCR_TRANSFER_READ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  LED_REMOVE ; 
 int /*<<< orphan*/  MEMORY_INITIALIZED ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct cardinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cardinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct cardinfo*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cardinfo*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_page*) ; 
 int /*<<< orphan*/  FUNC12 (struct cardinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cardinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(unsigned long data)
{
	/* check if any of the requests in the page are DMA_COMPLETE,
	 * and deal with them appropriately.
	 * If we find a descriptor without DMA_COMPLETE in the semaphore, then
	 * dma must have hit an error on that descriptor, so use dma_status
	 * instead and assume that all following descriptors must be re-tried.
	 */
	struct mm_page *page;
	struct bio *return_bio = NULL;
	struct cardinfo *card = (struct cardinfo *)data;
	unsigned int dma_status = card->dma_status;

	FUNC14(&card->lock);
	if (card->Active < 0)
		goto out_unlock;
	page = &card->mm_pages[card->Active];

	while (page->headcnt < page->cnt) {
		struct bio *bio = page->bio;
		struct mm_dma_desc *desc = &page->desc[page->headcnt];
		int control = FUNC7(desc->sem_control_bits);
		int last = 0;
		int idx;

		if (!(control & DMASCR_DMA_COMPLETE)) {
			control = dma_status;
			last = 1;
		}
		page->headcnt++;
		idx = page->idx;
		page->idx++;
		if (page->idx >= bio->bi_vcnt) {
			page->bio = bio->bi_next;
			if (page->bio)
				page->idx = page->bio->bi_idx;
		}

		FUNC9(card->dev, desc->data_dma_handle,
			       FUNC2(bio, idx)->bv_len,
				 (control & DMASCR_TRANSFER_READ) ?
				PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);
		if (control & DMASCR_HARD_ERROR) {
			/* error */
			FUNC4(BIO_UPTODATE, &bio->bi_flags);
			FUNC5(KERN_WARNING, &card->dev->dev,
				"I/O error on sector %d/%d\n",
				FUNC7(desc->local_addr)>>9,
				FUNC7(desc->transfer_size));
			FUNC6(card, control);
		} else if (FUNC16(BIO_RW, &bio->bi_rw) &&
			   FUNC7(desc->local_addr) >> 9 ==
				card->init_size) {
			card->init_size += FUNC7(desc->transfer_size) >> 9;
			if (card->init_size >> 1 >= card->mm_size) {
				FUNC5(KERN_INFO, &card->dev->dev,
					"memory now initialised\n");
				FUNC13(card, MEMORY_INITIALIZED, 1);
			}
		}
		if (bio != page->bio) {
			bio->bi_next = return_bio;
			return_bio = bio;
		}

		if (last)
			break;
	}

	if (debug & DEBUG_LED_ON_TRANSFER)
		FUNC12(card, LED_REMOVE, LED_OFF);

	if (card->check_batteries) {
		card->check_batteries = 0;
		FUNC3(card);
	}
	if (page->headcnt >= page->cnt) {
		FUNC11(page);
		card->Active = -1;
		FUNC0(card);
	} else {
		/* haven't finished with this one yet */
		FUNC10("do some more\n");
		FUNC8(card);
	}
 out_unlock:
	FUNC15(&card->lock);

	while (return_bio) {
		struct bio *bio = return_bio;

		return_bio = bio->bi_next;
		bio->bi_next = NULL;
		FUNC1(bio, 0);
	}
}