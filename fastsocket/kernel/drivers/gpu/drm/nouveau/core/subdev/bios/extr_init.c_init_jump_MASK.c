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
typedef  scalar_t__ u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	u16 offset = FUNC0(bios, init->offset + 1);

	FUNC1("JUMP\t0x%04x\n", offset);
	init->offset = offset;
}