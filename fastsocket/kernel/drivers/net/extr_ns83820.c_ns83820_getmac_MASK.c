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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ns83820 {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ RFCR ; 
 scalar_t__ RFDR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ns83820 *dev, u8 *mac)
{
	unsigned i;
	for (i=0; i<3; i++) {
		u32 data;

		/* Read from the perfect match memory: this is loaded by
		 * the chip from the EEPROM via the EELOAD self test.
		 */
		FUNC1(i*2, dev->base + RFCR);
		data = FUNC0(dev->base + RFDR);

		*mac++ = data;
		*mac++ = data >> 8;
	}
}