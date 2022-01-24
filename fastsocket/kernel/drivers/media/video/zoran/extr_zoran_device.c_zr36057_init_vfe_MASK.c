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
struct zoran {int dummy; } ;

/* Variables and functions */
 int PCIPCI_TRITON ; 
 int /*<<< orphan*/  ZR36057_VDCR ; 
 int /*<<< orphan*/  ZR36057_VDCR_Triton ; 
 int /*<<< orphan*/  ZR36057_VFESPFR ; 
 int /*<<< orphan*/  ZR36057_VFESPFR_ExtFl ; 
 int /*<<< orphan*/  ZR36057_VFESPFR_LittleEndian ; 
 int /*<<< orphan*/  ZR36057_VFESPFR_TopField ; 
 int /*<<< orphan*/  ZR36057_VFESPFR_VCLKPol ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int pci_pci_problems ; 

__attribute__((used)) static void
FUNC2 (struct zoran *zr)
{
	u32 reg;

	reg = FUNC0(ZR36057_VFESPFR);
	reg |= ZR36057_VFESPFR_LittleEndian;
	reg &= ~ZR36057_VFESPFR_VCLKPol;
	reg |= ZR36057_VFESPFR_ExtFl;
	reg |= ZR36057_VFESPFR_TopField;
	FUNC1(reg, ZR36057_VFESPFR);
	reg = FUNC0(ZR36057_VDCR);
	if (pci_pci_problems & PCIPCI_TRITON)
		// || zr->revision < 1) // Revision 1 has also Triton support
		reg &= ~ZR36057_VDCR_Triton;
	else
		reg |= ZR36057_VDCR_Triton;
	FUNC1(reg, ZR36057_VDCR);
}