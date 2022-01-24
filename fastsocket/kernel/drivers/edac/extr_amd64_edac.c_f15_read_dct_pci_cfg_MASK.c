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
typedef  int /*<<< orphan*/  u32 ;
struct amd64_pvt {int /*<<< orphan*/  F2; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd64_pvt*,int) ; 

__attribute__((used)) static int FUNC2(struct amd64_pvt *pvt, int addr, u32 *val,
				 const char *func)
{
	u8 dct  = 0;

	if (addr >= 0x140 && addr <= 0x1a0) {
		dct   = 1;
		addr -= 0x100;
	}

	FUNC1(pvt, dct);

	return FUNC0(pvt->F2, addr, val, func);
}