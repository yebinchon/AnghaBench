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
struct dvb_usb_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  XD_MP2IF_DMX_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_adapter *adap, int onoff)
{
	int ret;
	FUNC2("pid filter control  onoff %d\n", onoff);
	if (onoff) {
		ret =
		    FUNC0(adap->dev, XD_MP2IF_DMX_CTRL, 1);
		if (ret)
			return ret;
		ret =
		    FUNC1(adap->dev,
					       XD_MP2IF_DMX_CTRL, 1, 1, 1);
		if (ret)
			return ret;
		ret =
		    FUNC0(adap->dev, XD_MP2IF_DMX_CTRL, 1);
	} else
		ret =
		    FUNC0(adap->dev, XD_MP2IF_DMX_CTRL, 0);
	if (ret)
		return ret;
	FUNC2("pid filter control ok\n");
	return 0;
}