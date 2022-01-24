#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvbios_init {int /*<<< orphan*/  bios; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 scalar_t__ NV_50 ; 
 int FUNC0 (struct nvbios_init*) ; 
 int FUNC1 (struct nvbios_init*) ; 
 int FUNC2 (struct nvbios_init*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static inline u32
FUNC5(struct nvbios_init *init, u32 reg)
{
	/* C51 (at least) sometimes has the lower bits set which the VBIOS
	 * interprets to mean that access needs to go through certain IO
	 * ports instead.  The NVIDIA binary driver has been seen to access
	 * these through the NV register address, so lets assume we can
	 * do the same
	 */
	reg &= ~0x00000003;

	/* GF8+ display scripts need register addresses mangled a bit to
	 * select a specific CRTC/OR
	 */
	if (FUNC3(init->bios)->card_type >= NV_50) {
		if (reg & 0x80000000) {
			reg += FUNC0(init) * 0x800;
			reg &= ~0x80000000;
		}

		if (reg & 0x40000000) {
			reg += FUNC2(init) * 0x800;
			reg &= ~0x40000000;
			if (reg & 0x20000000) {
				reg += FUNC1(init) * 0x80;
				reg &= ~0x20000000;
			}
		}
	}

	if (reg & ~0x00fffffc)
		FUNC4("unknown bits in register 0x%08x\n", reg);
	return reg;
}