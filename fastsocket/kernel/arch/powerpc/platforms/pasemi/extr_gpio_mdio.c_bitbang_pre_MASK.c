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
typedef  int u8 ;
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mii_bus*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*) ; 

__attribute__((used)) static void FUNC2(struct mii_bus *bus, int read, u8 addr, u8 reg)
{
	int i;

	/* CFE uses a really long preamble (40 bits). We'll do the same. */
	FUNC1(bus);
	for (i = 0; i < 40; i++) {
		FUNC0(bus, 1);
	}

	/* send the start bit (01) and the read opcode (10) or write (10) */
	FUNC0(bus, 0);
	FUNC0(bus, 1);

	FUNC0(bus, read);
	FUNC0(bus, !read);

	/* send the PHY address */
	for (i = 0; i < 5; i++) {
		FUNC0(bus, (addr & 0x10) != 0);
		addr <<= 1;
	}

	/* send the register address */
	for (i = 0; i < 5; i++) {
		FUNC0(bus, (reg & 0x10) != 0);
		reg <<= 1;
	}
}