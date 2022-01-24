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
struct nvbios_init {struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;
struct bit_entry {int version; int length; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_bios*,char,struct bit_entry*) ; 
 int FUNC1 (struct nouveau_bios*,scalar_t__) ; 

__attribute__((used)) static u8
FUNC2(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	struct bit_entry bit_M;

	if (!FUNC0(bios, 'M', &bit_M)) {
		if (bit_M.version == 1 && bit_M.length >= 5)
			return FUNC1(bios, bit_M.offset + 2);
		if (bit_M.version == 2 && bit_M.length >= 3)
			return FUNC1(bios, bit_M.offset + 0);
	}

	return 0x00;
}