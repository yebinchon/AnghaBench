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
struct cmac {int /*<<< orphan*/  adapter; TYPE_1__* instance; } ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int DUPLEX_FULL ; 
 int DUPLEX_HALF ; 
 int PAUSE_RX ; 
 int PAUSE_TX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int SPEED_10 ; 
 int SPEED_100 ; 
 int SPEED_1000 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct cmac *mac, int speed, int duplex,
				   int fc)
{
	u32 v;
	int enable, port = mac->instance->index;

	if (speed >= 0 && speed != SPEED_10 && speed != SPEED_100 &&
	    speed != SPEED_1000)
		return -1;
	if (duplex > 0 && duplex != DUPLEX_FULL)
		return -1;

	if (speed >= 0) {
		FUNC5(mac->adapter, FUNC2(port), &v);
		enable = v & 3;             /* save tx/rx enables */
		v &= ~0xf;
		v |= 4;                     /* full duplex */
		if (speed == SPEED_1000)
			v |= 8;             /* GigE */
		enable |= v;
		FUNC6(mac->adapter, FUNC2(port), v);

		if (speed == SPEED_1000)
			v = 0x82;
		else if (speed == SPEED_100)
			v = 0x84;
		else	/* SPEED_10 */
			v = 0x86;
		FUNC6(mac->adapter, FUNC1(port), v | 1); /* reset */
		FUNC6(mac->adapter, FUNC1(port), v);
		FUNC5(mac->adapter, FUNC0(port), &v);
		v &= ~0xff00;
		if (speed == SPEED_1000)
			v |= 0x400;
		else if (speed == SPEED_100)
			v |= 0x2000;
		else	/* SPEED_10 */
			v |= 0xff00;
		FUNC6(mac->adapter, FUNC0(port), v);

		FUNC6(mac->adapter, FUNC4(port),
			  speed == SPEED_1000 ? 5 : 0x11);
		if (duplex == DUPLEX_HALF)
			enable = 0x0;	/* 100 or 10 */
		else if (speed == SPEED_1000)
			enable = 0xc;
		else	/* SPEED_100 or 10 */
			enable = 0x4;
		enable |= 0x9 << 10;	/* IFG1 */
		enable |= 0x6 << 6;	/* IFG2 */
		enable |= 0x1 << 4;	/* VLAN */
		enable |= 0x3;		/* RX/TX EN */
		FUNC6(mac->adapter, FUNC2(port), enable);

	}

	FUNC5(mac->adapter, FUNC3(port), &v);
	v &= 0xfff0ffff;
	v |= 0x20000;      /* xon/xoff */
	if (fc & PAUSE_RX)
		v |= 0x40000;
	if (fc & PAUSE_TX)
		v |= 0x80000;
	if (fc == (PAUSE_RX | PAUSE_TX))
		v |= 0x10000;
	FUNC6(mac->adapter, FUNC3(port), v);
	return 0;
}