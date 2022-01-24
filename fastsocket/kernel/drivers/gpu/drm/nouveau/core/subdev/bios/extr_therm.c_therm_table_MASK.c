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
struct nouveau_bios {int dummy; } ;
struct bit_entry {int version; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_bios*,char,struct bit_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bios*,char*,int) ; 
 int FUNC2 (struct nouveau_bios*,int) ; 
 int FUNC3 (struct nouveau_bios*,scalar_t__) ; 

__attribute__((used)) static u16
FUNC4(struct nouveau_bios *bios, u8 *ver, u8 *hdr, u8 *len, u8 *cnt)
{
	struct bit_entry bit_P;
	u16 therm = 0;

	if (!FUNC0(bios, 'P', &bit_P)) {
		if (bit_P.version == 1)
			therm = FUNC3(bios, bit_P.offset + 12);
		else if (bit_P.version == 2)
			therm = FUNC3(bios, bit_P.offset + 16);
		else
			FUNC1(bios,
				"unknown offset for thermal in BIT P %d\n",
				bit_P.version);
	}

	/* exit now if we haven't found the thermal table */
	if (!therm)
		return 0x0000;

	*ver = FUNC2(bios, therm + 0);
	*hdr = FUNC2(bios, therm + 1);
	*len = FUNC2(bios, therm + 2);
	*cnt = FUNC2(bios, therm + 3);

	return therm + FUNC2(bios, therm + 1);
}