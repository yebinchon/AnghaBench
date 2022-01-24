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
typedef  scalar_t__ u16 ;
struct nvbios_ocfg {void** clkcmp; void* match; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct nouveau_bios*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct nouveau_bios*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

u16
FUNC2(struct nouveau_bios *bios, u16 outp, u8 idx,
		  u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
		  struct nvbios_ocfg *info)
{
	u16 data = FUNC1(bios, outp, idx, ver, hdr, cnt, len);
	if (data) {
		info->match     = FUNC0(bios, data + 0x00);
		info->clkcmp[0] = FUNC0(bios, data + 0x02);
		info->clkcmp[1] = FUNC0(bios, data + 0x04);
	}
	return data;
}