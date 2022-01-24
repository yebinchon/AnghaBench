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
struct nouveau_bios {int bmp_offset; } ;
struct dcb_i2c_entry {int type; int share; int drive; int sense; } ;

/* Variables and functions */
#define  DCB_I2C_NV04_BIT 132 
#define  DCB_I2C_NV4E_BIT 131 
#define  DCB_I2C_NVIO_AUX 130 
#define  DCB_I2C_NVIO_BIT 129 
#define  DCB_I2C_UNUSED 128 
 int ENOENT ; 
 int FUNC0 (struct nouveau_bios*,int,int*,int*) ; 
 int FUNC1 (struct nouveau_bios*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bios*,char*,int) ; 

int
FUNC3(struct nouveau_bios *bios, u8 idx, struct dcb_i2c_entry *info)
{
	u8  ver, len;
	u16 ent = FUNC0(bios, idx, &ver, &len);
	if (ent) {
		info->type  = FUNC1(bios, ent + 3);
		info->share = DCB_I2C_UNUSED;
		if (ver < 0x30) {
			info->type &= 0x07;
			if (info->type == 0x07)
				info->type = DCB_I2C_UNUSED;
		}

		switch (info->type) {
		case DCB_I2C_NV04_BIT:
			info->drive = FUNC1(bios, ent + 0);
			info->sense = FUNC1(bios, ent + 1);
			return 0;
		case DCB_I2C_NV4E_BIT:
			info->drive = FUNC1(bios, ent + 1);
			return 0;
		case DCB_I2C_NVIO_BIT:
		case DCB_I2C_NVIO_AUX:
			info->drive = FUNC1(bios, ent + 0) & 0x0f;
			if (FUNC1(bios, ent + 1) & 0x01) {
				info->share  = FUNC1(bios, ent + 1) >> 1;
				info->share &= 0x0f;
			}
			return 0;
		case DCB_I2C_UNUSED:
			return 0;
		default:
			FUNC2(bios, "unknown i2c type %d\n", info->type);
			info->type = DCB_I2C_UNUSED;
			return 0;
		}
	}

	if (bios->bmp_offset && idx < 2) {
		/* BMP (from v4.0 has i2c info in the structure, it's in a
		 * fixed location on earlier VBIOS
		 */
		if (FUNC1(bios, bios->bmp_offset + 5) < 4)
			ent = 0x0048;
		else
			ent = 0x0036 + bios->bmp_offset;

		if (idx == 0) {
			info->drive = FUNC1(bios, ent + 4);
			if (!info->drive) info->drive = 0x3f;
			info->sense = FUNC1(bios, ent + 5);
			if (!info->sense) info->sense = 0x3e;
		} else
		if (idx == 1) {
			info->drive = FUNC1(bios, ent + 6);
			if (!info->drive) info->drive = 0x37;
			info->sense = FUNC1(bios, ent + 7);
			if (!info->sense) info->sense = 0x36;
		}

		info->type  = DCB_I2C_NV04_BIT;
		info->share = DCB_I2C_UNUSED;
		return 0;
	}

	return -ENOENT;
}