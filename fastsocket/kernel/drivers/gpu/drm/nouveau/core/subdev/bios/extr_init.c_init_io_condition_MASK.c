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
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u8 cond = FUNC2(bios, init->offset + 1);

	FUNC3("IO_CONDITION\t0x%02x\n", cond);
	init->offset += 2;

	if (!FUNC1(init, cond))
		FUNC0(init, false);
}