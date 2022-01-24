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
struct fw_iso_buffer {int page_count; int /*<<< orphan*/ * pages; int /*<<< orphan*/  direction; } ;
struct fw_card {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct fw_iso_buffer *buffer,
			   struct fw_card *card)
{
	int i;
	dma_addr_t address;

	for (i = 0; i < buffer->page_count; i++) {
		address = FUNC3(buffer->pages[i]);
		FUNC1(card->device, address,
			       PAGE_SIZE, buffer->direction);
		FUNC0(buffer->pages[i]);
	}

	FUNC2(buffer->pages);
	buffer->pages = NULL;
}