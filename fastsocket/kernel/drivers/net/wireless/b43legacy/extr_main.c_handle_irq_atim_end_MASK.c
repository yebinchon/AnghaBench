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
struct b43legacy_wldev {int dfq_valid; } ;

/* Variables and functions */
 int B43legacy_MACCMD_DFQ_VALID ; 
 int /*<<< orphan*/  B43legacy_MMIO_MACCMD ; 
 int FUNC0 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct b43legacy_wldev *dev)
{
	if (dev->dfq_valid) {
		FUNC1(dev, B43legacy_MMIO_MACCMD,
				  FUNC0(dev, B43legacy_MMIO_MACCMD)
				  | B43legacy_MACCMD_DFQ_VALID);
		dev->dfq_valid = false;
	}
}