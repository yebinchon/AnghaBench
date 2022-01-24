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
struct parport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parport*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*,unsigned char) ; 

__attribute__((used)) static void FUNC2(struct parport *port, int type, unsigned char data, int powered, int pwr_sub)
{
	unsigned char c;

	switch (type) {
	case 1: /* DPP1 */
		c = 0x80 | 0x30 | (powered ? 0x08 : 0) | (pwr_sub ? 0x04 : 0) | data;
		FUNC1(port, c);
		break;
	case 2: /* DPP2 */
		c = 0x40 | data << 4 | (powered ? 0x08 : 0) | (pwr_sub ? 0x04 : 0) | 0x03;
		FUNC1(port, c);
		break;
	case 0:	/* DB9 */
		c = ((((data & 2) ? 2 : 0) | ((data & 1) ? 4 : 0)) ^ 0x02) | !powered;
		FUNC0(port, c);
		break;
	}
}