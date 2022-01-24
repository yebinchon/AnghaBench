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

__attribute__((used)) static u16
FUNC3(struct nouveau_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
	u16 data = FUNC0(bios, ver, hdr, cnt, len);
	if (data && *ver >= 0x40 && *hdr >= 0x06) {
		u16 xpio = FUNC2(bios, data + 0x04);
		if (xpio) {
			*ver = FUNC1(bios, data + 0x00);
			*hdr = FUNC1(bios, data + 0x01);
			*cnt = FUNC1(bios, data + 0x02);
			*len = FUNC1(bios, data + 0x03);
			return xpio;
		}
	}
	return 0x0000;
}