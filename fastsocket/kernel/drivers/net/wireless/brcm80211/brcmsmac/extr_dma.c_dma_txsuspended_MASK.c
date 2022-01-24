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
struct dma_info {scalar_t__ ntxd; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int D64_XC_SE ; 
 int /*<<< orphan*/  FUNC0 (struct dma_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  control ; 

bool FUNC2(struct dma_pub *pub)
{
	struct dma_info *di = (struct dma_info *)pub;

	return (di->ntxd == 0) ||
	       ((FUNC1(di->core,
			     FUNC0(di, control)) & D64_XC_SE) ==
		D64_XC_SE);
}