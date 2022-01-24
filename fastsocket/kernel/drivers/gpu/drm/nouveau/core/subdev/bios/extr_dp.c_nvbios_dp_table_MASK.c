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
struct bit_entry {int version; int length; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_bios*,char,struct bit_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bios*,int) ; 
 int FUNC2 (struct nouveau_bios*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16
FUNC3(struct nouveau_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
	struct bit_entry d;

	if (!FUNC0(bios, 'd', &d)) {
		if (d.version == 1 && d.length >= 2) {
			u16 data = FUNC2(bios, d.offset);
			if (data) {
				*ver = FUNC1(bios, data + 0x00);
				switch (*ver) {
				case 0x21:
				case 0x30:
				case 0x40:
					*hdr = FUNC1(bios, data + 0x01);
					*len = FUNC1(bios, data + 0x02);
					*cnt = FUNC1(bios, data + 0x03);
					return data;
				default:
					break;
				}
			}
		}
	}

	return 0x0000;
}