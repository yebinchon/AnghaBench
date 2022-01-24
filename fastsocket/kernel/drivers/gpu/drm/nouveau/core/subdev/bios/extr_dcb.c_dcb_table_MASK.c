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
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 scalar_t__ NV_04 ; 
 struct nouveau_device* FUNC0 (struct nouveau_bios*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bios*,int,char*,int) ; 
 int FUNC2 (struct nouveau_bios*,int) ; 
 int FUNC3 (struct nouveau_bios*,int) ; 
 int FUNC4 (struct nouveau_bios*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_bios*,char*,...) ; 

u16
FUNC6(struct nouveau_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
	struct nouveau_device *device = FUNC0(bios);
	u16 dcb = 0x0000;

	if (device->card_type > NV_04)
		dcb = FUNC3(bios, 0x36);
	if (!dcb) {
		FUNC5(bios, "DCB table not found\n");
		return dcb;
	}

	*ver = FUNC2(bios, dcb);

	if (*ver >= 0x41) {
		FUNC5(bios, "DCB version 0x%02x unknown\n", *ver);
		return 0x0000;
	} else
	if (*ver >= 0x30) {
		if (FUNC4(bios, dcb + 6) == 0x4edcbdcb) {
			*hdr = FUNC2(bios, dcb + 1);
			*cnt = FUNC2(bios, dcb + 2);
			*len = FUNC2(bios, dcb + 3);
			return dcb;
		}
	} else
	if (*ver >= 0x20) {
		if (FUNC4(bios, dcb + 4) == 0x4edcbdcb) {
			u16 i2c = FUNC3(bios, dcb + 2);
			*hdr = 8;
			*cnt = (i2c - dcb) / 8;
			*len = 8;
			return dcb;
		}
	} else
	if (*ver >= 0x15) {
		if (!FUNC1(bios, dcb - 7, "DEV_REC", 7)) {
			u16 i2c = FUNC3(bios, dcb + 2);
			*hdr = 4;
			*cnt = (i2c - dcb) / 10;
			*len = 10;
			return dcb;
		}
	} else {
		/*
		 * v1.4 (some NV15/16, NV11+) seems the same as v1.5, but
		 * always has the same single (crt) entry, even when tv-out
		 * present, so the conclusion is this version cannot really
		 * be used.
		 *
		 * v1.2 tables (some NV6/10, and NV15+) normally have the
		 * same 5 entries, which are not specific to the card and so
		 * no use.
		 *
		 * v1.2 does have an I2C table that read_dcb_i2c_table can
		 * handle, but cards exist (nv11 in #14821) with a bad i2c
		 * table pointer, so use the indices parsed in
		 * parse_bmp_structure.
		 *
		 * v1.1 (NV5+, maybe some NV4) is entirely unhelpful
		 */
		FUNC5(bios, "DCB contains no useful data\n");
		return 0x0000;
	}

	FUNC5(bios, "DCB header validation failed\n");
	return 0x0000;
}