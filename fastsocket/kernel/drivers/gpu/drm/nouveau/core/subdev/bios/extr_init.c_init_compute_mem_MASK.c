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
struct nvbios_init {int offset; int /*<<< orphan*/  bios; } ;
struct nouveau_devinit {int /*<<< orphan*/  (* meminit ) (struct nouveau_devinit*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int) ; 
 struct nouveau_devinit* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_devinit*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct nvbios_init *init)
{
	struct nouveau_devinit *devinit = FUNC2(init->bios);

	FUNC4("COMPUTE_MEM\n");
	init->offset += 1;

	FUNC1(init, true);
	if (FUNC0(init) && devinit->meminit)
		devinit->meminit(devinit);
	FUNC1(init, false);
}