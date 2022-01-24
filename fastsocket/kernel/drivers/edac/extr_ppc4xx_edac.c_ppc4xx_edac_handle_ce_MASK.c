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
struct ppc4xx_ecc_status {int dummy; } ;
struct mem_ctl_info {int nr_csrows; } ;
typedef  int /*<<< orphan*/  message ;

/* Variables and functions */
 int PPC4XX_EDAC_MESSAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*,char*) ; 
 scalar_t__ FUNC1 (struct ppc4xx_ecc_status const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,struct ppc4xx_ecc_status const*,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct mem_ctl_info *mci,
		      const struct ppc4xx_ecc_status *status)
{
	int row;
	char message[PPC4XX_EDAC_MESSAGE_SIZE];

	FUNC2(mci, status, message, sizeof(message));

	for (row = 0; row < mci->nr_csrows; row++)
		if (FUNC1(status, row))
			FUNC0(mci, message);
}