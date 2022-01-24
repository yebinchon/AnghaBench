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
struct mii_bus {int /*<<< orphan*/  (* write ) (struct mii_bus*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MII_MMD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct mii_bus*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mii_bus *bus, int prtad, int devad,
				   int addr, u32 data)
{
	FUNC0(bus, prtad, devad, addr);

	/* Write the data into MMD's selected register */
	bus->write(bus, addr, MII_MMD_DATA, data);
}