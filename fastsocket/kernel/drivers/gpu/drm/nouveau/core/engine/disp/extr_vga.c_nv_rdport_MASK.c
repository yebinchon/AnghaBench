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
typedef  int u16 ;
struct nouveau_device {scalar_t__ card_type; } ;

/* Variables and functions */
 scalar_t__ NV_40 ; 
 scalar_t__ NV_50 ; 
 struct nouveau_device* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,int) ; 
 int FUNC2 (void*,int) ; 

u8
FUNC3(void *obj, int head, u16 port)
{
	struct nouveau_device *device = FUNC0(obj);

	if (device->card_type >= NV_50)
		return FUNC2(obj, 0x601000 + port);

	if (port == 0x03c0 || port == 0x03c1 ||	/* AR */
	    port == 0x03c2 || port == 0x03da ||	/* INP0 */
	    port == 0x03d4 || port == 0x03d5)	/* CR */
		return FUNC2(obj, 0x601000 + (head * 0x2000) + port);

	if (port == 0x03c2 || port == 0x03cc ||	/* MISC */
	    port == 0x03c4 || port == 0x03c5 ||	/* SR */
	    port == 0x03ce || port == 0x03cf) {	/* GR */
		if (device->card_type < NV_40)
			head = 0; /* CR44 selects head */
		return FUNC2(obj, 0x0c0000 + (head * 0x2000) + port);
	}

	FUNC1(obj, "unknown vga port 0x%04x\n", port);
	return 0x00;
}