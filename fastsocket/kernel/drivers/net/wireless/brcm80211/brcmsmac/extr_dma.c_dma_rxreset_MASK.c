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
typedef  int u32 ;
struct dma_pub {int dummy; } ;
struct dma_info {scalar_t__ nrxd; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int D64_RS0_RS_DISABLED ; 
 int D64_RS0_RS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct dma_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  status0 ; 

bool FUNC4(struct dma_pub *pub)
{
	struct dma_info *di = (struct dma_info *)pub;
	u32 status;

	if (di->nrxd == 0)
		return true;

	FUNC3(di->core, FUNC0(di, control), 0);
	FUNC1(((status =
		   (FUNC2(di->core, FUNC0(di, status0)) &
		    D64_RS0_RS_MASK)) != D64_RS0_RS_DISABLED), 10000);

	return status == D64_RS0_RS_DISABLED;
}