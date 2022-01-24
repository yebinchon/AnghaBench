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
struct ioat2_dma_chan {int alloc_order; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct ioat2_dma_chan* FUNC1 (struct dma_chan*) ; 

__attribute__((used)) static ssize_t FUNC2(struct dma_chan *c, char *page)
{
	struct ioat2_dma_chan *ioat = FUNC1(c);

	return FUNC0(page, "%d\n", (1 << ioat->alloc_order) & ~1);
}