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
struct srp_iu {size_t size; int direction; struct srp_iu* buf; int /*<<< orphan*/  dma; } ;
struct srp_host {TYPE_1__* srp_dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct srp_iu*,size_t,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct srp_iu*) ; 
 struct srp_iu* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct srp_iu* FUNC4 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct srp_iu *FUNC5(struct srp_host *host, size_t size,
				   gfp_t gfp_mask,
				   enum dma_data_direction direction)
{
	struct srp_iu *iu;

	iu = FUNC3(sizeof *iu, gfp_mask);
	if (!iu)
		goto out;

	iu->buf = FUNC4(size, gfp_mask);
	if (!iu->buf)
		goto out_free_iu;

	iu->dma = FUNC0(host->srp_dev->dev, iu->buf, size,
				    direction);
	if (FUNC1(host->srp_dev->dev, iu->dma))
		goto out_free_buf;

	iu->size      = size;
	iu->direction = direction;

	return iu;

out_free_buf:
	FUNC2(iu->buf);
out_free_iu:
	FUNC2(iu);
out:
	return NULL;
}