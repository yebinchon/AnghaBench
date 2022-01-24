#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_4__ {int state; int num_desc_pages; int num_pages; scalar_t__ free_on_sequence; struct page** bounce_buffer; struct page** pages; int /*<<< orphan*/  direction; int /*<<< orphan*/ ** desc_pages; } ;
typedef  TYPE_1__ drm_via_sg_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
#define  dr_via_desc_pages_alloc 131 
#define  dr_via_device_mapped 130 
#define  dr_via_pages_alloc 129 
#define  dr_via_pages_locked 128 
 int dr_via_sg_init ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page**) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(struct pci_dev *pdev, drm_via_sg_info_t *vsg)
{
	struct page *page;
	int i;

	switch (vsg->state) {
	case dr_via_device_mapped:
		FUNC6(pdev, vsg);
	case dr_via_desc_pages_alloc:
		for (i = 0; i < vsg->num_desc_pages; ++i) {
			if (vsg->desc_pages[i] != NULL)
				FUNC2((unsigned long)vsg->desc_pages[i]);
		}
		FUNC3(vsg->desc_pages);
	case dr_via_pages_locked:
		for (i = 0; i < vsg->num_pages; ++i) {
			if (NULL != (page = vsg->pages[i])) {
				if (!FUNC0(page) && (DMA_FROM_DEVICE == vsg->direction))
					FUNC1(page);
				FUNC4(page);
			}
		}
	case dr_via_pages_alloc:
		FUNC5(vsg->pages);
	default:
		vsg->state = dr_via_sg_init;
	}
	FUNC5(vsg->bounce_buffer);
	vsg->bounce_buffer = NULL;
	vsg->free_on_sequence = 0;
}