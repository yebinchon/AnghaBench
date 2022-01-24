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
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int /*<<< orphan*/  ctl_name; TYPE_1__* csrows; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  first_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCDEBUG_ERRLOG1A ; 
 int MCDEBUG_ERRLOG1A_MERR_CS_M ; 
 int MCDEBUG_ERRLOG1A_MERR_CS_S ; 
 int MCDEBUG_ERRSTA_MBE_STATUS ; 
 int MCDEBUG_ERRSTA_RFL_STATUS ; 
 int MCDEBUG_ERRSTA_SBE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mem_ctl_info *mci, u32 errsta)
{
	struct pci_dev *pdev = FUNC3(mci->dev);
	u32 errlog1a;
	u32 cs;

	if (!errsta)
		return;

	FUNC2(pdev, MCDEBUG_ERRLOG1A, &errlog1a);

	cs = (errlog1a & MCDEBUG_ERRLOG1A_MERR_CS_M) >>
		MCDEBUG_ERRLOG1A_MERR_CS_S;

	/* uncorrectable/multi-bit errors */
	if (errsta & (MCDEBUG_ERRSTA_MBE_STATUS |
		      MCDEBUG_ERRSTA_RFL_STATUS)) {
		FUNC1(mci, mci->csrows[cs].first_page, 0,
				  cs, mci->ctl_name);
	}

	/* correctable/single-bit errors */
	if (errsta & MCDEBUG_ERRSTA_SBE_STATUS) {
		FUNC0(mci, mci->csrows[cs].first_page, 0,
				  0, cs, 0, mci->ctl_name);
	}
}