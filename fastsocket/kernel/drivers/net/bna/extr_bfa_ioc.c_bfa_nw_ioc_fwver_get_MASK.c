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
typedef  int u32 ;
struct bfi_ioc_image_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ smem_page_start; int /*<<< orphan*/  host_page_num_fn; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;
typedef  int /*<<< orphan*/  loff ;

/* Variables and functions */
 int FUNC0 (struct bfa_ioc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

void
FUNC4(struct bfa_ioc *ioc, struct bfi_ioc_image_hdr *fwhdr)
{
	u32	pgnum;
	u32	loff = 0;
	int		i;
	u32	*fwsig = (u32 *) fwhdr;

	pgnum = FUNC0(ioc, loff);
	FUNC3(pgnum, ioc->ioc_regs.host_page_num_fn);

	for (i = 0; i < (sizeof(struct bfi_ioc_image_hdr) / sizeof(u32));
	     i++) {
		fwsig[i] =
			FUNC2(FUNC1((loff) + (ioc->ioc_regs.smem_page_start)));
		loff += sizeof(u32);
	}
}