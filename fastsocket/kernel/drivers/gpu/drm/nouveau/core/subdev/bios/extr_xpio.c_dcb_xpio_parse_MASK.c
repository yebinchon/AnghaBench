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
struct nvbios_xpio {void* flags; void* addr; void* type; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_bios*,int,int*,int*,int*,int*) ; 
 void* FUNC1 (struct nouveau_bios*,int) ; 

u16
FUNC2(struct nouveau_bios *bios, u8 idx,
	       u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
	       struct nvbios_xpio *info)
{
	u16 data = FUNC0(bios, idx, ver, hdr, cnt, len);
	if (data && *len >= 6) {
		info->type = FUNC1(bios, data + 0x04);
		info->addr = FUNC1(bios, data + 0x05);
		info->flags = FUNC1(bios, data + 0x06);
	}
	return 0x0000;
}