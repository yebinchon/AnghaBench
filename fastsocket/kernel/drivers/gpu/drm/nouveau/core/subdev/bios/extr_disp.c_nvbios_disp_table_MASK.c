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
typedef  int u16 ;
struct nouveau_bios {int dummy; } ;
struct bit_entry {int version; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_bios*,unsigned char,struct bit_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bios*,int) ; 
 int FUNC2 (struct nouveau_bios*,int /*<<< orphan*/ ) ; 

u16
FUNC3(struct nouveau_bios *bios,
		  u8 *ver, u8 *hdr, u8 *cnt, u8 *len, u8 *sub)
{
	struct bit_entry U;

	if (!FUNC0(bios, 'U', &U)) {
		if (U.version == 1) {
			u16 data = FUNC2(bios, U.offset);
			if (data) {
				*ver = FUNC1(bios, data + 0x00);
				switch (*ver) {
				case 0x20:
				case 0x21:
					*hdr = FUNC1(bios, data + 0x01);
					*len = FUNC1(bios, data + 0x02);
					*cnt = FUNC1(bios, data + 0x03);
					*sub = FUNC1(bios, data + 0x04);
					return data;
				default:
					break;
				}
			}
		}
	}

	return 0x0000;
}