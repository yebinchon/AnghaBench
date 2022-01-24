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
typedef  int uint32_t ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(struct lpfc_hba *phba, uint32_t intr_mode)
{
	switch (intr_mode) {
	case 0:
		FUNC0(phba, KERN_INFO, LOG_INIT,
				"0470 Enable INTx interrupt mode.\n");
		break;
	case 1:
		FUNC0(phba, KERN_INFO, LOG_INIT,
				"0481 Enabled MSI interrupt mode.\n");
		break;
	case 2:
		FUNC0(phba, KERN_INFO, LOG_INIT,
				"0480 Enabled MSI-X interrupt mode.\n");
		break;
	default:
		FUNC0(phba, KERN_ERR, LOG_INIT,
				"0482 Illegal interrupt mode.\n");
		break;
	}
	return;
}