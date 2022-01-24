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
struct dvb_usb_adapter {int feedcount; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  XD_MP2IF_PID_DATA_H ; 
 int /*<<< orphan*/  XD_MP2IF_PID_DATA_L ; 
 int /*<<< orphan*/  XD_MP2IF_PID_IDX ; 
 int FUNC0 (struct dvb_usb_adapter*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_adapter *adap, int index,
			     u16 pid, int onoff)
{
	u8 cmd = index & 0x1f;
	int ret;
	FUNC2("set pid filter, index %d, pid %x, onoff %d\n", index,
		 pid, onoff);
	if (onoff) {
		/* cannot use it as pid_filter_ctrl since it has to be done
		   before setting the first pid */
		if (adap->feedcount == 1) {
			FUNC2("first pid set, enable pid table\n");
			ret = FUNC0(adap, onoff);
			if (ret)
				return ret;
		}
		ret =
		    FUNC1(adap->dev,
					       XD_MP2IF_PID_DATA_L,
					       (u8) (pid & 0xff));
		if (ret)
			return ret;
		ret =
		    FUNC1(adap->dev,
					       XD_MP2IF_PID_DATA_H,
					       (u8) (pid >> 8));
		if (ret)
			return ret;
		cmd |= 0x20 | 0x40;
	} else {
		if (adap->feedcount == 0) {
			FUNC2("last pid unset, disable pid table\n");
			ret = FUNC0(adap, onoff);
			if (ret)
				return ret;
		}
	}
	ret = FUNC1(adap->dev, XD_MP2IF_PID_IDX, cmd);
	if (ret)
		return ret;
	FUNC2("set pid ok\n");
	return 0;
}