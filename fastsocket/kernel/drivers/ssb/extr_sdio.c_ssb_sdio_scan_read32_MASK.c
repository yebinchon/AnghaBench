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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ssb_bus {int sdio_sbaddr; int /*<<< orphan*/  host_sdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_bus*) ; 
 scalar_t__ FUNC5 (int) ; 

u32 FUNC6(struct ssb_bus *bus, u16 offset)
{
	u32 val;
	int error;

	FUNC1(bus->host_sdio);
	val = FUNC2(bus->host_sdio, offset, &error);
	FUNC3(bus->host_sdio);
	if (FUNC5(error)) {
		FUNC0(FUNC4(bus), "%04X:%04X > %08x, error %d\n",
			bus->sdio_sbaddr >> 16, offset, val, error);
	}

	return val;
}