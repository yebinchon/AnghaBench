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
typedef  int u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u16 usec = FUNC2(bios, init->offset + 1);

	FUNC3("TIME\t0x%04x\n", usec);
	init->offset += 3;

	if (FUNC0(init)) {
		if (usec < 1000)
			FUNC4(usec);
		else
			FUNC1((usec + 900) / 1000);
	}
}