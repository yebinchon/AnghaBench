#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct t4_sq {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  queue; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  memsize; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct c4iw_rdev {TYPE_2__ lldi; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC1 (struct t4_sq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct c4iw_rdev *rdev, struct t4_sq *sq)
{
	sq->queue = FUNC0(&(rdev->lldi.pdev->dev), sq->memsize,
				       &(sq->dma_addr), GFP_KERNEL);
	if (!sq->queue)
		return -ENOMEM;
	sq->phys_addr = FUNC2(sq->queue);
	FUNC1(sq, mapping, sq->dma_addr);
	return 0;
}