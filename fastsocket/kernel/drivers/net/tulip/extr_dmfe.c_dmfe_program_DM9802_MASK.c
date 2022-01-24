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
typedef  int uint ;
struct dmfe_board_info {int HPNA_command; int /*<<< orphan*/  chip_id; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  ioaddr; } ;

/* Variables and functions */
 int DM9802_NOISE_FLOOR ; 
 int HPNA_NoiseFloor ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dmfe_board_info * db)
{
	uint phy_reg;

	if ( !HPNA_NoiseFloor ) HPNA_NoiseFloor = DM9802_NOISE_FLOOR;
	FUNC1(db->ioaddr, db->phy_addr, 16, db->HPNA_command, db->chip_id);
	phy_reg = FUNC0(db->ioaddr, db->phy_addr, 25, db->chip_id);
	phy_reg = ( phy_reg & 0xff00) + HPNA_NoiseFloor;
	FUNC1(db->ioaddr, db->phy_addr, 25, phy_reg, db->chip_id);
}