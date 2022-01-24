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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct phy_device*,int) ; 
 int FUNC1 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int temp;
	int err;

	/* Errata */
	err = FUNC1(phydev,29, 0x0006);

	if (err)
		return err;

	temp = FUNC0(phydev, 30);

	if (temp < 0)
		return temp;

	temp = (temp & (~0x8000)) | 0x4000;
	err = FUNC1(phydev,30, temp);

	if (err)
		return err;

	err = FUNC1(phydev,29, 0x000a);

	if (err)
		return err;

	temp = FUNC0(phydev, 30);

	if (temp < 0)
		return temp;

	temp = FUNC0(phydev, 30);

	if (temp < 0)
		return temp;

	temp &= ~0x0020;

	err = FUNC1(phydev,30,temp);

	if (err)
		return err;

	/* Disable automatic MDI/MDIX selection */
	temp = FUNC0(phydev, 16);

	if (temp < 0)
		return temp;

	temp &= ~0x0060;
	err = FUNC1(phydev,16,temp);

	return err;
}