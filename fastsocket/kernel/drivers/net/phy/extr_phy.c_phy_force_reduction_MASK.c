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
struct phy_device {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  supported; } ;
struct TYPE_2__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* settings ; 

__attribute__((used)) static void FUNC3(struct phy_device *phydev)
{
	int idx;

	idx = FUNC0(phydev->speed, phydev->duplex);
	
	idx++;

	idx = FUNC1(idx, phydev->supported);

	phydev->speed = settings[idx].speed;
	phydev->duplex = settings[idx].duplex;

	FUNC2("Trying %d/%s\n", phydev->speed,
			DUPLEX_FULL == phydev->duplex ?
			"FULL" : "HALF");
}