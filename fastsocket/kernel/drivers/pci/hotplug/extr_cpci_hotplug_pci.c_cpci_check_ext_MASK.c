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
typedef  int u16 ;
struct slot {int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int HS_CSR_EXT ; 
 int /*<<< orphan*/  PCI_CAP_ID_CHSWP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

int FUNC2(struct slot* slot)
{
	int hs_cap;
	u16 hs_csr;
	int ext = 0;

	hs_cap = FUNC0(slot->bus,
					 slot->devfn,
					 PCI_CAP_ID_CHSWP);
	if (!hs_cap)
		return 0;
	if (FUNC1(slot->bus,
				     slot->devfn,
				     hs_cap + 2,
				     &hs_csr))
		return 0;
	if (hs_csr & HS_CSR_EXT)
		ext = 1;
	return ext;
}