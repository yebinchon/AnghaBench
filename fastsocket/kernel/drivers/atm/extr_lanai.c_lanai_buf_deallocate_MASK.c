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
struct pci_dev {int dummy; } ;
struct lanai_buffer {int /*<<< orphan*/ * ptr; int /*<<< orphan*/ * end; int /*<<< orphan*/ * start; int /*<<< orphan*/  dmaaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lanai_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct lanai_buffer *buf,
	struct pci_dev *pci)
{
	if (buf->start != NULL) {
		FUNC1(pci, FUNC0(buf),
		    buf->start, buf->dmaaddr);
		buf->start = buf->end = buf->ptr = NULL;
	}
}