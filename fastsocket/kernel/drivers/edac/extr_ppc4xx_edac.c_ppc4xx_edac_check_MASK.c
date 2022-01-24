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
struct ppc4xx_ecc_status {int ecces; } ;
struct mem_ctl_info {int dummy; } ;

/* Variables and functions */
 int SDRAM_ECCES_CE ; 
 int SDRAM_ECCES_UE ; 
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*,struct ppc4xx_ecc_status*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,struct ppc4xx_ecc_status*) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,struct ppc4xx_ecc_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,struct ppc4xx_ecc_status*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*,struct ppc4xx_ecc_status*) ; 

__attribute__((used)) static void
FUNC5(struct mem_ctl_info *mci)
{
#ifdef DEBUG
	static unsigned int count;
#endif
	struct ppc4xx_ecc_status status;

	FUNC2(mci, &status);

#ifdef DEBUG
	if (count++ % 30 == 0)
		ppc4xx_ecc_dump_status(mci, &status);
#endif

	if (status.ecces & SDRAM_ECCES_UE)
		FUNC4(mci, &status);

	if (status.ecces & SDRAM_ECCES_CE)
		FUNC3(mci, &status);

	FUNC0(mci, &status);
}