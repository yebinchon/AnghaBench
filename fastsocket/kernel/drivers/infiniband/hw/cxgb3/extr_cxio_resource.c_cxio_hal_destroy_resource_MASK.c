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
struct cxio_hal_resource {int /*<<< orphan*/  pdid_fifo; int /*<<< orphan*/  qpid_fifo; int /*<<< orphan*/  cqid_fifo; int /*<<< orphan*/  tpt_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxio_hal_resource*) ; 

void FUNC2(struct cxio_hal_resource *rscp)
{
	FUNC0(rscp->tpt_fifo);
	FUNC0(rscp->cqid_fifo);
	FUNC0(rscp->qpid_fifo);
	FUNC0(rscp->pdid_fifo);
	FUNC1(rscp);
}