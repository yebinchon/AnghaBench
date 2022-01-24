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
 int /*<<< orphan*/  PMLCA_FCS ; 
 int /*<<< orphan*/  PMLCA_FCU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int ctr, int user, int kernel)
{
	u32 pmlca;

	pmlca = FUNC0(ctr);

	if(user)
		pmlca &= ~PMLCA_FCU;
	else
		pmlca |= PMLCA_FCU;

	if(kernel)
		pmlca &= ~PMLCA_FCS;
	else
		pmlca |= PMLCA_FCS;

	FUNC1(ctr, pmlca);
}