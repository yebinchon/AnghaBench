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
 int /*<<< orphan*/  PMLCA_CE ; 
 int /*<<< orphan*/  PMLCA_FC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int ctr, int enable)
{
	u32 pmlca = FUNC0(ctr);

	pmlca &= ~PMLCA_FC;

	if (enable)
		pmlca |= PMLCA_CE;
	else
		pmlca &= ~PMLCA_CE;

	FUNC1(ctr, pmlca);
}