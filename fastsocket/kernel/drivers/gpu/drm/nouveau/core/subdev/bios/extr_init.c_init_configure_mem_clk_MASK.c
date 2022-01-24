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
struct nvbios_init {int /*<<< orphan*/  bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvbios_init*,int,int) ; 

__attribute__((used)) static u16
FUNC2(struct nvbios_init *init)
{
	u16 mdata = FUNC0(init->bios);
	if (mdata)
		mdata += (FUNC1(init, 0x03d4, 0x3c) >> 4) * 66;
	return mdata;
}