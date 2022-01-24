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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  PMRN_PMLCA0 ; 
 int /*<<< orphan*/  PMRN_PMLCA1 ; 
 int /*<<< orphan*/  PMRN_PMLCA2 ; 
 int /*<<< orphan*/  PMRN_PMLCA3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline void FUNC2(int ctr, u32 pmlca)
{
	switch (ctr) {
		case 0:
			FUNC0(PMRN_PMLCA0, pmlca);
			break;
		case 1:
			FUNC0(PMRN_PMLCA1, pmlca);
			break;
		case 2:
			FUNC0(PMRN_PMLCA2, pmlca);
			break;
		case 3:
			FUNC0(PMRN_PMLCA3, pmlca);
			break;
		default:
			FUNC1("Bad ctr number\n");
	}
}