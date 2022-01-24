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
typedef  int u32 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct nouveau_bios*,scalar_t__) ; 
 int FUNC4 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,char*,int,int,int) ; 

__attribute__((used)) static void
FUNC6(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u32  sreg = FUNC4(bios, init->offset + 1);
	u8  shift = FUNC3(bios, init->offset + 5);
	u32 smask = FUNC4(bios, init->offset + 6);
	u32  sxor = FUNC4(bios, init->offset + 10);
	u32  dreg = FUNC4(bios, init->offset + 14);
	u32 dmask = FUNC4(bios, init->offset + 18);
	u32 data;

	FUNC5("COPY_NV_REG\tR[0x%06x] &= 0x%08x |= "
	      "((R[0x%06x] %s 0x%02x) & 0x%08x ^ 0x%08x)\n",
	      dreg, dmask, sreg, (shift & 0x80) ? "<<" : ">>",
	      (shift & 0x80) ? (0x100 - shift) : shift, smask, sxor);
	init->offset += 22;

	data = FUNC2(FUNC1(init, sreg), shift);
	FUNC0(init, dreg, ~dmask, (data & smask) ^ sxor);
}