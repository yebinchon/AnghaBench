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
typedef  int /*<<< orphan*/  u16 ;
struct nvbios_extdev_func {int dummy; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_bios*,int /*<<< orphan*/ ,struct nvbios_extdev_func*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bios*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC2(struct nouveau_bios *bios, int idx,
		    struct nvbios_extdev_func *func)
{
	u8 ver, len;
	u16 entry;

	if (!(entry = FUNC1(bios, idx, &ver, &len)))
		return -EINVAL;

	FUNC0(bios, entry, func);

	return 0;
}