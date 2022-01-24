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
typedef  scalar_t__ u16 ;
struct nvbios_init {TYPE_1__* outp; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nouveau_bios*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct nouveau_bios*,scalar_t__) ; 

__attribute__((used)) static u8
FUNC3(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;

	if (init->outp) {
		u8  ver, len;
		u16 conn = FUNC0(bios, init->outp->connector, &ver, &len);
		if (conn)
			return FUNC2(bios, conn);
	}

	FUNC1("script needs connector type\n");
	return 0x00;
}