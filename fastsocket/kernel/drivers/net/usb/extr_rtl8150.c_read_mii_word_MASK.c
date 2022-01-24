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
typedef  int /*<<< orphan*/  rtl8150_t ;
typedef  int /*<<< orphan*/  data ;
typedef  int __u8 ;

/* Variables and functions */
 int MII_TIMEOUT ; 
 int /*<<< orphan*/  PHYADD ; 
 int /*<<< orphan*/  PHYCNT ; 
 int /*<<< orphan*/  PHYDAT ; 
 int PHY_GO ; 
 int PHY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC2(rtl8150_t * dev, u8 phy, __u8 indx, u16 * reg)
{
	int i;
	u8 data[3], tmp;

	data[0] = phy;
	data[1] = data[2] = 0;
	tmp = indx | PHY_READ | PHY_GO;
	i = 0;

	FUNC1(dev, PHYADD, sizeof(data), data);
	FUNC1(dev, PHYCNT, 1, &tmp);
	do {
		FUNC0(dev, PHYCNT, 1, data);
	} while ((data[0] & PHY_GO) && (i++ < MII_TIMEOUT));

	if (i < MII_TIMEOUT) {
		FUNC0(dev, PHYDAT, 2, data);
		*reg = data[0] | (data[1] << 8);
		return 0;
	} else
		return 1;
}