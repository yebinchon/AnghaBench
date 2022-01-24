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
struct sgdma_state {int sglen; int len; void* arg; int /*<<< orphan*/  callback; scalar_t__ csr; scalar_t__ queued_sglist; scalar_t__ bytes_read; scalar_t__ next_sglist; struct scatterlist const* sglist; } ;
struct scatterlist {int dummy; } ;
struct omap24xxcam_sgdma {int next_sgdma; int /*<<< orphan*/  lock; int /*<<< orphan*/  free_sgdma; struct sgdma_state* sg_state; } ;
typedef  int /*<<< orphan*/  sgdma_callback_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int NUM_SG_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct omap24xxcam_sgdma*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct omap24xxcam_sgdma *sgdma,
			    const struct scatterlist *sglist, int sglen,
			    int len, sgdma_callback_t callback, void *arg)
{
	unsigned long flags;
	struct sgdma_state *sg_state;

	if ((sglen < 0) || ((sglen > 0) & !sglist))
		return -EINVAL;

	FUNC1(&sgdma->lock, flags);

	if (!sgdma->free_sgdma) {
		FUNC2(&sgdma->lock, flags);
		return -EBUSY;
	}

	sg_state = sgdma->sg_state + sgdma->next_sgdma;

	sg_state->sglist = sglist;
	sg_state->sglen = sglen;
	sg_state->next_sglist = 0;
	sg_state->bytes_read = 0;
	sg_state->len = len;
	sg_state->queued_sglist = 0;
	sg_state->csr = 0;
	sg_state->callback = callback;
	sg_state->arg = arg;

	sgdma->next_sgdma = (sgdma->next_sgdma + 1) % NUM_SG_DMA;
	sgdma->free_sgdma--;

	FUNC2(&sgdma->lock, flags);

	FUNC0(sgdma);

	return 0;
}