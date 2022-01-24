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
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_SHM_WIRELESS ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct b43legacy_wldev *dev,
				       unsigned int short_retry,
				       unsigned int long_retry)
{
	/* The retry limit is a 4-bit counter. Enforce this to avoid overflowing
	 * the chip-internal counter. */
	short_retry = FUNC1(short_retry, (unsigned int)0xF);
	long_retry = FUNC1(long_retry, (unsigned int)0xF);

	FUNC0(dev, B43legacy_SHM_WIRELESS, 0x0006, short_retry);
	FUNC0(dev, B43legacy_SHM_WIRELESS, 0x0007, long_retry);
}