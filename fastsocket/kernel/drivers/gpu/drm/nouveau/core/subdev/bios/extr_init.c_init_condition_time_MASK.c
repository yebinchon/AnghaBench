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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvbios_init*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u8  cond = FUNC5(bios, init->offset + 1);
	u8 retry = FUNC5(bios, init->offset + 2);
	u8  wait = FUNC4((u16)retry * 50, 100);

	FUNC6("CONDITION_TIME\t0x%02x 0x%02x\n", cond, retry);
	init->offset += 3;

	if (!FUNC1(init))
		return;

	while (wait--) {
		if (FUNC0(init, cond))
			return;
		FUNC3(20);
	}

	FUNC2(init, false);
}