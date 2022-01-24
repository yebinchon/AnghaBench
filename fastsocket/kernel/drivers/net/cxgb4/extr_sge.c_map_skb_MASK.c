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
struct skb_shared_info {size_t nr_frags; TYPE_1__* frags; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff const*) ; 
 struct skb_shared_info* FUNC6 (struct sk_buff const*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, const struct sk_buff *skb,
		   dma_addr_t *addr)
{
	const skb_frag_t *fp, *end;
	const struct skb_shared_info *si;

	*addr = FUNC1(dev, skb->data, FUNC5(skb), DMA_TO_DEVICE);
	if (FUNC2(dev, *addr))
		goto out_err;

	si = FUNC6(skb);
	end = &si->frags[si->nr_frags];

	for (fp = si->frags; fp < end; fp++) {
		*++addr = FUNC0(dev, fp->page, fp->page_offset, fp->size,
				       DMA_TO_DEVICE);
		if (FUNC2(dev, *addr))
			goto unwind;
	}
	return 0;

unwind:
	while (fp-- > si->frags)
		FUNC3(dev, *--addr, fp->size, DMA_TO_DEVICE);

	FUNC4(dev, addr[-1], FUNC5(skb), DMA_TO_DEVICE);
out_err:
	return -ENOMEM;
}