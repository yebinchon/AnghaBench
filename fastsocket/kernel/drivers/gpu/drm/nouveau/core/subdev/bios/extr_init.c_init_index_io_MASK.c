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
typedef  void* u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvbios_init*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,void*,int,int) ; 
 int FUNC2 (struct nouveau_bios*,scalar_t__) ; 
 void* FUNC3 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,int,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u16 port = FUNC3(bios, init->offset + 1);
	u8 index = FUNC3(bios, init->offset + 3);
	u8  mask = FUNC2(bios, init->offset + 4);
	u8  data = FUNC2(bios, init->offset + 5);
	u8 value;

	FUNC4("INDEX_IO\tI[0x%04x][0x%02x] &= 0x%02x |= 0x%02x\n",
	      port, index, mask, data);
	init->offset += 6;

	value = FUNC0(init, port, index) & mask;
	FUNC1(init, port, index, data | value);
}