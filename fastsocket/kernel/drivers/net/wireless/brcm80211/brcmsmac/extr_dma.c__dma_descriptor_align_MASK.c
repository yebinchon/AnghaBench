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
typedef  scalar_t__ u32 ;
struct dma_info {scalar_t__ d64txregbase; scalar_t__ d64rxregbase; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  addrlow ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4(struct dma_info *di)
{
	u32 addrl;

	/* Check to see if the descriptors need to be aligned on 4K/8K or not */
	if (di->d64txregbase != 0) {
		FUNC3(di->core, FUNC1(di, addrlow), 0xff0);
		addrl = FUNC2(di->core, FUNC1(di, addrlow));
		if (addrl != 0)
			return false;
	} else if (di->d64rxregbase != 0) {
		FUNC3(di->core, FUNC0(di, addrlow), 0xff0);
		addrl = FUNC2(di->core, FUNC0(di, addrlow));
		if (addrl != 0)
			return false;
	}
	return true;
}