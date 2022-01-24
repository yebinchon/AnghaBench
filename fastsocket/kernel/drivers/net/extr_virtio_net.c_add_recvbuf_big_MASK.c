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
struct virtnet_info {int /*<<< orphan*/  rvq; } ;
struct virtio_net_hdr {int dummy; } ;
struct scatterlist {int dummy; } ;
struct page {unsigned long private; } ;
struct padded_vnet_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int MAX_SKB_FRAGS ; 
 int PAGE_SIZE ; 
 struct page* FUNC0 (struct virtnet_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct virtnet_info*,struct page*) ; 
 char* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int,struct page*) ; 

__attribute__((used)) static int FUNC5(struct virtnet_info *vi, gfp_t gfp)
{
	struct scatterlist sg[MAX_SKB_FRAGS + 2];
	struct page *first, *list = NULL;
	char *p;
	int i, err, offset;

	/* page in sg[MAX_SKB_FRAGS + 1] is list tail */
	for (i = MAX_SKB_FRAGS + 1; i > 1; --i) {
		first = FUNC0(vi, gfp);
		if (!first) {
			if (list)
				FUNC1(vi, list);
			return -ENOMEM;
		}
		FUNC3(&sg[i], FUNC2(first), PAGE_SIZE);

		/* chain new page in list head to match sg */
		first->private = (unsigned long)list;
		list = first;
	}

	first = FUNC0(vi, gfp);
	if (!first) {
		FUNC1(vi, list);
		return -ENOMEM;
	}
	p = FUNC2(first);

	/* sg[0], sg[1] share the same page */
	/* a separated sg[0] for  virtio_net_hdr only during to QEMU bug*/
	FUNC3(&sg[0], p, sizeof(struct virtio_net_hdr));

	/* sg[1] for data packet, from offset */
	offset = sizeof(struct padded_vnet_hdr);
	FUNC3(&sg[1], p + offset, PAGE_SIZE - offset);

	/* chain first in list head */
	first->private = (unsigned long)list;
	err = FUNC4(vi->rvq, sg, 0, MAX_SKB_FRAGS + 2,
				       first);
	if (err < 0)
		FUNC1(vi, first);

	return err;
}