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
struct dma_pub {int dummy; } ;
struct dma_info {scalar_t__ ntxd; int /*<<< orphan*/  core; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  D64_XC_SE ; 
 int /*<<< orphan*/  FUNC0 (struct dma_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  control ; 

void FUNC3(struct dma_pub *pub)
{
	struct dma_info *di = (struct dma_info *)pub;

	FUNC2(di->core, "%s:\n", di->name);

	if (di->ntxd == 0)
		return;

	FUNC1(di->core, FUNC0(di, control), ~D64_XC_SE);
}