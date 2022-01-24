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
struct nvbios_outp {int mask; int* script; void* type; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct nouveau_bios*,int) ; 
 int FUNC1 (struct nouveau_bios*,int) ; 
 int FUNC2 (struct nouveau_bios*,int,int*,int*,int*,int*) ; 

u16
FUNC3(struct nouveau_bios *bios, u8 idx,
		  u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
		  struct nvbios_outp *info)
{
	u16 data = FUNC2(bios, idx, ver, hdr, cnt, len);
	if (data && *hdr >= 0x0a) {
		info->type      = FUNC0(bios, data + 0x00);
		info->mask      = FUNC1(bios, data + 0x02);
		if (*ver <= 0x20) /* match any link */
			info->mask |= 0x00c0;
		info->script[0] = FUNC0(bios, data + 0x06);
		info->script[1] = FUNC0(bios, data + 0x08);
		info->script[2] = 0x0000;
		if (*hdr >= 0x0c)
			info->script[2] = FUNC0(bios, data + 0x0a);
		return data;
	}
	return 0x0000;
}