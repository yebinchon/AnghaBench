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
struct uvd {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct uvd *uvd, int exposure)
{
	int ret;
	int formedval;

	/* calculation was from qc-usb-messenger driver */
	formedval = ( exposure >> 12 );

	/* max value for formedval is 14 */
	formedval = FUNC1(formedval, 14);

	FUNC0(ret, FUNC2(uvd->dev,
			0x143A, 0xF0 | formedval));
	FUNC0(ret, FUNC2(uvd->dev, 0x143F, 0x01));
	return 0;
}