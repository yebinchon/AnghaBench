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
struct dma_iso_ctx {unsigned int* buffer_status; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline unsigned FUNC2(struct dma_iso_ctx *d,
					      unsigned int buffer)
{
	unsigned long flags;
	unsigned int ret;
	FUNC0(&d->lock, flags);
	ret = d->buffer_status[buffer];
	FUNC1(&d->lock, flags);
	return ret;
}