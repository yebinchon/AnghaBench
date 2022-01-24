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
typedef  int u64 ;
typedef  int u32 ;
struct superhyway_vcr_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct superhyway_vcr_info*,int*,int) ; 

__attribute__((used)) static int FUNC2(unsigned long base, struct superhyway_vcr_info *vcr)
{
	u32 vcrh, vcrl;
	u64 tmp;

	/*
	 * XXX: Even though the SH4-202 Evaluation Device documentation
	 * indicates that VCRL is mapped first with VCRH at a + 0x04
	 * offset, the opposite seems to be true.
	 *
	 * Some modules (PBR and ePBR for instance) also appear to have
	 * VCRL/VCRH flipped in the documentation, but on the SH4-202
	 * itself it appears that these are all consistently mapped with
	 * VCRH preceding VCRL.
	 *
	 * Do not trust the documentation, for it is evil.
	 */
	vcrh = FUNC0(base);
	vcrl = FUNC0(base + sizeof(u32));

	tmp = ((u64)vcrh << 32) | vcrl;
	FUNC1(vcr, &tmp, sizeof(u64));

	return 0;
}