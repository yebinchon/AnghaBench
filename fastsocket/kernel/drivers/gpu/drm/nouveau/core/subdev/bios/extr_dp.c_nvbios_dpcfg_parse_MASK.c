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
struct nvbios_dpcfg {void* unk; void* pre; void* drv; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct nouveau_bios*,int) ; 
 int FUNC1 (struct nouveau_bios*,int,int,int*,int*,int*,int*) ; 

u16
FUNC2(struct nouveau_bios *bios, u16 outp, u8 idx,
		   u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
		   struct nvbios_dpcfg *info)
{
	u16 data = FUNC1(bios, outp, idx, ver, hdr, cnt, len);
	if (data) {
		switch (*ver) {
		case 0x21:
			info->drv = FUNC0(bios, data + 0x02);
			info->pre = FUNC0(bios, data + 0x03);
			info->unk = FUNC0(bios, data + 0x04);
			break;
		case 0x30:
		case 0x40:
			info->drv = FUNC0(bios, data + 0x01);
			info->pre = FUNC0(bios, data + 0x02);
			info->unk = FUNC0(bios, data + 0x03);
			break;
		default:
			data = 0x0000;
			break;
		}
	}
	return data;
}