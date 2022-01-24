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
struct dma_buf {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct dma_buf *dmabuf)
{
	if (FUNC0(!dmabuf || !dmabuf->file))
		return;

	FUNC1(dmabuf->file);
}