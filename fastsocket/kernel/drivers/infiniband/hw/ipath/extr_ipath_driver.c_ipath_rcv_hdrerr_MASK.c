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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct ipath_message_header {int /*<<< orphan*/ * bth; } ;
struct ipath_devdata {scalar_t__ ipath_ibcctrl; scalar_t__ ipath_lli_counter; int /*<<< orphan*/  ipath_lli_errors; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK ; 
 scalar_t__ INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT ; 
 int INFINIPATH_RHF_H_ICRCERR ; 
 int INFINIPATH_RHF_H_VCRCERR ; 
 int /*<<< orphan*/  PKT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ipath_devdata *dd,
			     u32 eflags,
			     u32 l,
			     u32 etail,
			     __le32 *rhf_addr,
			     struct ipath_message_header *hdr)
{
	char emsg[128];

	FUNC1(eflags, emsg, sizeof emsg);
	FUNC2(PKT, "RHFerrs %x hdrqtail=%x typ=%u "
		   "tlen=%x opcode=%x egridx=%x: %s\n",
		   eflags, l,
		   FUNC4(rhf_addr),
		   FUNC3(rhf_addr),
		   FUNC0(hdr->bth[0]) >> 24,
		   etail, emsg);

	/* Count local link integrity errors. */
	if (eflags & (INFINIPATH_RHF_H_ICRCERR | INFINIPATH_RHF_H_VCRCERR)) {
		u8 n = (dd->ipath_ibcctrl >>
			INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT) &
			INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK;

		if (++dd->ipath_lli_counter > n) {
			dd->ipath_lli_counter = 0;
			dd->ipath_lli_errors++;
		}
	}
}