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

/* Variables and functions */
 int FUNC0 (struct nouveau_bios*,int*,int*,int*,int*) ; 
 int FUNC1 (struct nouveau_bios*,int) ; 
 int FUNC2 (struct nouveau_bios*,int) ; 

u16
FUNC3(struct nouveau_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
	u16 dcb = FUNC0(bios, ver, hdr, cnt, len);
	if (dcb && *ver >= 0x30 && *hdr >= 0x16) {
		u16 data = FUNC2(bios, dcb + 0x14);
		if (data) {
			*ver = FUNC1(bios, data + 0);
			*hdr = FUNC1(bios, data + 1);
			*cnt = FUNC1(bios, data + 2);
			*len = FUNC1(bios, data + 3);
			return data;
		}
	}
	return 0x0000;
}