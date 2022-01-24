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
struct nvbios_disp {int /*<<< orphan*/  data; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_bios*,int) ; 
 int FUNC1 (struct nouveau_bios*,int,int*,int*,int*) ; 

u16
FUNC2(struct nouveau_bios *bios, u8 idx,
		  u8 *ver, u8 *len, u8 *sub,
		  struct nvbios_disp *info)
{
	u16 data = FUNC1(bios, idx, ver, len, sub);
	if (data && *len >= 2) {
		info->data = FUNC0(bios, data + 0);
		return data;
	}
	return 0x0000;
}