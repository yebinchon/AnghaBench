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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct parisc_device {int dummy; } ;
struct ioc {int cujo20_bug; int* res_map; unsigned int res_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CUJO_20_STEP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ioc* FUNC1 (struct parisc_device*) ; 
 struct parisc_device* FUNC2 (struct parisc_device*) ; 

void FUNC3(struct parisc_device *cujo, u32 iovp)
{
	unsigned int idx;
	struct parisc_device *dev = FUNC2(cujo);
	struct ioc *ioc = FUNC1(dev);
	u8 *res_ptr;

	ioc->cujo20_bug = 1;
	res_ptr = ioc->res_map;
	idx = FUNC0(iovp) >> 3;

	while (idx < ioc->res_size) {
 		res_ptr[idx] |= 0xff;
		idx += FUNC0(CUJO_20_STEP) >> 3;
	}
}