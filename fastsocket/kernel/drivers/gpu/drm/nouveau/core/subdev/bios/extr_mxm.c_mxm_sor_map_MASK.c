#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int chip; } ;
struct nouveau_bios {TYPE_1__ version; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_bios*,int*,int*) ; 
 int* nv84_sor_map ; 
 int* nv92_sor_map ; 
 int* nv94_sor_map ; 
 int* nv98_sor_map ; 
 int FUNC1 (struct nouveau_bios*,int) ; 
 int FUNC2 (struct nouveau_bios*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bios*,char*,...) ; 

u8
FUNC4(struct nouveau_bios *bios, u8 conn)
{
	u8  ver, hdr;
	u16 mxm = FUNC0(bios, &ver, &hdr);
	if (mxm && hdr >= 6) {
		u16 map = FUNC2(bios, mxm + 4);
		if (map) {
			ver = FUNC1(bios, map);
			if (ver == 0x10) {
				if (conn < FUNC1(bios, map + 3)) {
					map += FUNC1(bios, map + 1);
					map += conn;
					return FUNC1(bios, map);
				}

				return 0x00;
			}

			FUNC3(bios, "unknown sor map v%02x\n", ver);
		}
	}

	if (bios->version.chip == 0x84 || bios->version.chip == 0x86)
		return nv84_sor_map[conn];
	if (bios->version.chip == 0x92)
		return nv92_sor_map[conn];
	if (bios->version.chip == 0x94 || bios->version.chip == 0x96)
		return nv94_sor_map[conn];
	if (bios->version.chip == 0x98)
		return nv98_sor_map[conn];

	FUNC3(bios, "missing sor map\n");
	return 0x00;
}