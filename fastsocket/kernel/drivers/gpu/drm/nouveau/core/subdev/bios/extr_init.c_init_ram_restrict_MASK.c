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
typedef  int u16 ;
struct nvbios_init {int /*<<< orphan*/  bios; } ;

/* Variables and functions */
 int FUNC0 (struct nvbios_init*) ; 
 int FUNC1 (struct nvbios_init*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8
FUNC3(struct nvbios_init *init)
{
	u8  strap = FUNC0(init);
	u16 table = FUNC1(init);
	if (table)
		return FUNC2(init->bios, table + strap);
	return 0x00;
}