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
struct slgt_info {int rbuf_count; unsigned int tbuf_count; struct slgt_desc* tbufs; struct slgt_desc* rbufs; scalar_t__ bufs_dma_addr; int /*<<< orphan*/ * bufs; int /*<<< orphan*/  pdev; } ;
struct slgt_desc {unsigned int pdesc; void* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_LIST_SIZE ; 
 int /*<<< orphan*/  DMABUFSIZE ; 
 int ENOMEM ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_desc,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct slgt_info *info)
{
	unsigned int i;
	unsigned int pbufs;

	/* allocate memory to hold descriptor lists */
	info->bufs = FUNC2(info->pdev, DESC_LIST_SIZE, &info->bufs_dma_addr);
	if (info->bufs == NULL)
		return -ENOMEM;

	FUNC1(info->bufs, 0, DESC_LIST_SIZE);

	info->rbufs = (struct slgt_desc*)info->bufs;
	info->tbufs = ((struct slgt_desc*)info->bufs) + info->rbuf_count;

	pbufs = (unsigned int)info->bufs_dma_addr;

	/*
	 * Build circular lists of descriptors
	 */

	for (i=0; i < info->rbuf_count; i++) {
		/* physical address of this descriptor */
		info->rbufs[i].pdesc = pbufs + (i * sizeof(struct slgt_desc));

		/* physical address of next descriptor */
		if (i == info->rbuf_count - 1)
			info->rbufs[i].next = FUNC0(pbufs);
		else
			info->rbufs[i].next = FUNC0(pbufs + ((i+1) * sizeof(struct slgt_desc)));
		FUNC3(info->rbufs[i], DMABUFSIZE);
	}

	for (i=0; i < info->tbuf_count; i++) {
		/* physical address of this descriptor */
		info->tbufs[i].pdesc = pbufs + ((info->rbuf_count + i) * sizeof(struct slgt_desc));

		/* physical address of next descriptor */
		if (i == info->tbuf_count - 1)
			info->tbufs[i].next = FUNC0(pbufs + info->rbuf_count * sizeof(struct slgt_desc));
		else
			info->tbufs[i].next = FUNC0(pbufs + ((info->rbuf_count + i + 1) * sizeof(struct slgt_desc)));
	}

	return 0;
}