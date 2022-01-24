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
 int FUNC0 (struct nouveau_bios*,int) ; 
 int FUNC1 (struct nouveau_bios*,int*,int*,int*,int*) ; 

__attribute__((used)) static u16
FUNC2(struct nouveau_bios *bios, u16 outp, u8 idx,
		   u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
	if (*ver >= 0x40) {
		outp = FUNC1(bios, ver, hdr, cnt, len);
		*hdr = *hdr + (*len * * cnt);
		*len = FUNC0(bios, outp + 0x06);
		*cnt = FUNC0(bios, outp + 0x07);
	}

	if (idx < *cnt)
		return outp + *hdr + (idx * *len);

	return 0x0000;
}