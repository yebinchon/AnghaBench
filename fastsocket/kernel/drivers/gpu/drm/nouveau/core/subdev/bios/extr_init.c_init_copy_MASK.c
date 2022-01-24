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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvbios_init*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvbios_init*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static void
FUNC8(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u32  reg = FUNC6(bios, init->offset + 1);
	u8 shift = FUNC4(bios, init->offset + 5);
	u8 smask = FUNC4(bios, init->offset + 6);
	u16 port = FUNC5(bios, init->offset + 7);
	u8 index = FUNC4(bios, init->offset + 9);
	u8  mask = FUNC4(bios, init->offset + 10);
	u8  data;

	FUNC7("COPY\t0x%04x[0x%02x] &= 0x%02x |= "
	      "((R[0x%06x] %s 0x%02x) & 0x%02x)\n",
	      port, index, mask, reg, (shift & 0x80) ? "<<" : ">>",
	      (shift & 0x80) ? (0x100 - shift) : shift, smask);
	init->offset += 11;

	data  = FUNC1(init, port, index) & mask;
	data |= FUNC2(FUNC0(init, reg), shift) & smask;
	FUNC3(init, port, index, data);
}