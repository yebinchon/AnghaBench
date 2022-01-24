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
struct nvbios_disp {scalar_t__ data; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_bios*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct nouveau_bios*,int,int*,int*,int*,struct nvbios_disp*) ; 

u16
FUNC2(struct nouveau_bios *bios, u8 idx,
		  u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
	struct nvbios_disp info;
	u16 data = FUNC1(bios, idx, ver, len, hdr, &info);
	if (data) {
		*cnt = FUNC0(bios, info.data + 0x05);
		*len = 0x06;
		data = info.data;
	}
	return data;
}