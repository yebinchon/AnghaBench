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
struct ioat_dma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 scalar_t__ DMA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ioat_dma_chan*) ; 
 int FUNC1 (struct dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ioat_dma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static enum dma_status
FUNC3(struct dma_chan *c, dma_cookie_t cookie,
		      dma_cookie_t *done, dma_cookie_t *used)
{
	struct ioat_dma_chan *ioat = FUNC2(c);

	if (FUNC1(c, cookie, done, used) == DMA_SUCCESS)
		return DMA_SUCCESS;

	FUNC0(ioat);

	return FUNC1(c, cookie, done, used);
}