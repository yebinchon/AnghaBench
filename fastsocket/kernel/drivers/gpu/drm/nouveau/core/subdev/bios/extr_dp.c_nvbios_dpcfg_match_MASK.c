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
typedef  scalar_t__ u16 ;
struct nvbios_dpcfg {int dummy; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_bios*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct nouveau_bios*,scalar_t__,int,int*,int*,int*,int*) ; 
 scalar_t__ FUNC2 (struct nouveau_bios*,scalar_t__,int,int*,int*,int*,int*,struct nvbios_dpcfg*) ; 

u16
FUNC3(struct nouveau_bios *bios, u16 outp, u8 un, u8 vs, u8 pe,
		   u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
		   struct nvbios_dpcfg *info)
{
	u8 idx = 0xff;
	u16 data;

	if (*ver >= 0x30) {
		const u8 vsoff[] = { 0, 4, 7, 9 };
		idx = (un * 10) + vsoff[vs] + pe;
	} else {
		while ((data = FUNC1(bios, outp, idx,
						  ver, hdr, cnt, len))) {
			if (FUNC0(bios, data + 0x00) == vs &&
			    FUNC0(bios, data + 0x01) == pe)
				break;
			idx++;
		}
	}

	return FUNC2(bios, outp, pe, ver, hdr, cnt, len, info);
}