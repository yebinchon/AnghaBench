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
struct saa7146 {int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int FUNC0 (struct saa7146*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct saa7146 *saa)
{
	int i;
	for (i = 0; i < 200; i++) {
		/* auto mute off, power on, no de-emphasis */
		/* I2S data up to 24-bit 64xFs internal SCLK */
		FUNC1(saa, 0x22, 0x01, 0x11, 2);
		/* ATAPI mixer settings */
		FUNC1(saa, 0x22, 0x02, 0x49, 2);
		/* attenuation left 3db */
		FUNC1(saa, 0x22, 0x03, 0x00, 2);
		/* attenuation right 3db */
		FUNC1(saa, 0x22, 0x04, 0x00, 2);
		FUNC1(saa, 0x22, 0x01, 0x10, 2);
		if (FUNC0(saa, 0x22, 0x02, 1) == 0x49)
			break;
		FUNC3();
	}
	FUNC2("stradis%d: CS4341 initialized (%d)\n", saa->nr, i);
	return;
}