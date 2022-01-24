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

/* Variables and functions */
 int PMLCA_FC ; 
 int PMLCA_FCM0 ; 
 int PMLCA_FCM1 ; 
 int PMLCA_FCS ; 
 int PMLCA_FCU ; 
 int /*<<< orphan*/  PMRN_PMLCA0 ; 
 int /*<<< orphan*/  PMRN_PMLCA1 ; 
 int /*<<< orphan*/  PMRN_PMLCA2 ; 
 int /*<<< orphan*/  PMRN_PMLCA3 ; 
 int /*<<< orphan*/  PMRN_PMLCB0 ; 
 int /*<<< orphan*/  PMRN_PMLCB1 ; 
 int /*<<< orphan*/  PMRN_PMLCB2 ; 
 int /*<<< orphan*/  PMRN_PMLCB3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(int ctr)
{
	u32 pmlca = (PMLCA_FC | PMLCA_FCS | PMLCA_FCU |
			PMLCA_FCM1 | PMLCA_FCM0);
	u32 pmlcb = 0;

	switch (ctr) {
		case 0:
			FUNC0(PMRN_PMLCA0, pmlca);
			FUNC0(PMRN_PMLCB0, pmlcb);
			break;
		case 1:
			FUNC0(PMRN_PMLCA1, pmlca);
			FUNC0(PMRN_PMLCB1, pmlcb);
			break;
		case 2:
			FUNC0(PMRN_PMLCA2, pmlca);
			FUNC0(PMRN_PMLCB2, pmlcb);
			break;
		case 3:
			FUNC0(PMRN_PMLCA3, pmlca);
			FUNC0(PMRN_PMLCB3, pmlcb);
			break;
		default:
			FUNC1("Bad ctr number!\n");
	}
}