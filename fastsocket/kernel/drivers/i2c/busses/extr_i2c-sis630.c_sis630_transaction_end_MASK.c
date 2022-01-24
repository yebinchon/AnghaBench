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
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMB_CNT ; 
 int /*<<< orphan*/  SMB_STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ high_clock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct i2c_adapter *adap, u8 oldclock)
{
	int temp = 0;

	/* clear all status "sticky" bits */
	FUNC2(SMB_STS, temp);

	FUNC0(&adap->dev, "SMB_CNT before clock restore 0x%02x\n", FUNC1(SMB_CNT));

	/*
	 * restore old Host Master Clock if high_clock is set
	 * and oldclock was not 56KHz
	 */
	if (high_clock && !(oldclock & 0x20))
		FUNC2(SMB_CNT,(FUNC1(SMB_CNT) & ~0x20));

	FUNC0(&adap->dev, "SMB_CNT after clock restore 0x%02x\n", FUNC1(SMB_CNT));
}