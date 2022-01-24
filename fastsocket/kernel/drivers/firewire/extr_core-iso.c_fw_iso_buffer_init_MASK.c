#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fw_iso_buffer {int page_count; int direction; int /*<<< orphan*/ ** pages; } ;
struct fw_card {int /*<<< orphan*/  device; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(struct fw_iso_buffer *buffer, struct fw_card *card,
		       int page_count, enum dma_data_direction direction)
{
	int i, j;
	dma_addr_t address;

	buffer->page_count = page_count;
	buffer->direction = direction;

	buffer->pages = FUNC6(page_count * sizeof(buffer->pages[0]),
				GFP_KERNEL);
	if (buffer->pages == NULL)
		goto out;

	for (i = 0; i < buffer->page_count; i++) {
		buffer->pages[i] = FUNC1(GFP_KERNEL | GFP_DMA32 | __GFP_ZERO);
		if (buffer->pages[i] == NULL)
			goto out_pages;

		address = FUNC2(card->device, buffer->pages[i],
				       0, PAGE_SIZE, direction);
		if (FUNC3(card->device, address)) {
			FUNC0(buffer->pages[i]);
			goto out_pages;
		}
		FUNC8(buffer->pages[i], address);
	}

	return 0;

 out_pages:
	for (j = 0; j < i; j++) {
		address = FUNC7(buffer->pages[j]);
		FUNC4(card->device, address,
			       PAGE_SIZE, direction);
		FUNC0(buffer->pages[j]);
	}
	FUNC5(buffer->pages);
 out:
	buffer->pages = NULL;

	return -ENOMEM;
}