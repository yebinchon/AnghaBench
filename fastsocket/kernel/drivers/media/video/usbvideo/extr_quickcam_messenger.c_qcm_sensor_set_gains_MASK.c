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
typedef  int u16 ;
struct uvd {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct uvd *uvd, u16 hue,
	u16 saturation, u16 value)
{
	int ret;
	u16 r=0,g=0,b=0;

	/* this code is based on qc-usb-messenger */
	FUNC2(hue, saturation, value, &r, &g, &b);

	r >>= 12;
	g >>= 12;
	b >>= 12;

	/* min val is 8 */
	r = FUNC1((u16) 8, r);
	g = FUNC1((u16) 8, g);
	b = FUNC1((u16) 8, b);

	r |= 0x30;
	g |= 0x30;
	b |= 0x30;

	/* set the r,g,b gain registers */
	FUNC0(ret, FUNC3(uvd->dev, 0x0509, r));
	FUNC0(ret, FUNC3(uvd->dev, 0x050A, g));
	FUNC0(ret, FUNC3(uvd->dev, 0x050B, b));

	/* doing as qc-usb did */
	FUNC0(ret, FUNC3(uvd->dev, 0x050C, 0x2A));
	FUNC0(ret, FUNC3(uvd->dev, 0x050D, 0x01));
	FUNC0(ret, FUNC3(uvd->dev, 0x143F, 0x01));

	return 0;
}