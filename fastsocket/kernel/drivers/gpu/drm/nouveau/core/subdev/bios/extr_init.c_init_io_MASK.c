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
typedef  int u8 ;
typedef  int u16 ;
struct nvbios_init {struct nouveau_bios* bios; scalar_t__ offset; } ;
struct nouveau_bios {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 scalar_t__ NV_50 ; 
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int,int,int) ; 
 int FUNC1 (struct nvbios_init*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvbios_init*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvbios_init*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (struct nouveau_bios*) ; 
 int FUNC6 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int) ; 

__attribute__((used)) static void
FUNC8(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u16 port = FUNC6(bios, init->offset + 1);
	u8  mask = FUNC6(bios, init->offset + 3);
	u8  data = FUNC6(bios, init->offset + 4);
	u8 value;

	FUNC7("IO\t\tI[0x%04x] &= 0x%02x |= 0x%02x\n", port, mask, data);
	init->offset += 5;

	/* ummm.. yes.. should really figure out wtf this is and why it's
	 * needed some day..  it's almost certainly wrong, but, it also
	 * somehow makes things work...
	 */
	if (FUNC5(init->bios)->card_type >= NV_50 &&
	    port == 0x03c3 && data == 0x01) {
		FUNC0(init, 0x614100, 0xf0800000, 0x00800000);
		FUNC0(init, 0x00e18c, 0x00020000, 0x00020000);
		FUNC0(init, 0x614900, 0xf0800000, 0x00800000);
		FUNC0(init, 0x000200, 0x40000000, 0x00000000);
		FUNC4(10);
		FUNC0(init, 0x00e18c, 0x00020000, 0x00000000);
		FUNC0(init, 0x000200, 0x40000000, 0x40000000);
		FUNC2(init, 0x614100, 0x00800018);
		FUNC2(init, 0x614900, 0x00800018);
		FUNC4(10);
		FUNC2(init, 0x614100, 0x10000018);
		FUNC2(init, 0x614900, 0x10000018);
	}

	value = FUNC1(init, port) & mask;
	FUNC3(init, port, data | value);
}