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
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*) ; 
 struct skb_shared_info* FUNC3 (struct sk_buff const*) ; 

__attribute__((used)) static void FUNC4(struct device *dev, const struct sk_buff *skb,
		      const dma_addr_t *addr)
{
	const skb_frag_t *fp, *end;
	const struct skb_shared_info *si;

	FUNC1(dev, *addr++, FUNC2(skb), DMA_TO_DEVICE);

	si = FUNC3(skb);
	end = &si->frags[si->nr_frags];
	for (fp = si->frags; fp < end; fp++)
		FUNC0(dev, *addr++, fp->size, DMA_TO_DEVICE);
}