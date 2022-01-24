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
struct dvb_usb_adapter {int /*<<< orphan*/  dev; int /*<<< orphan*/  fe; } ;
typedef  int /*<<< orphan*/  state ;
typedef  int /*<<< orphan*/  query ;

/* Variables and functions */
 char CINERGYT2_EP1_GET_FIRMWARE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cinergyt2_usb_device ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_adapter *adap)
{
	char query[] = { CINERGYT2_EP1_GET_FIRMWARE_VERSION };
	char state[3];
	int ret;

	adap->fe = FUNC0(adap->dev);

	ret = FUNC2(adap->dev, query, sizeof(query), state,
				sizeof(state), 0);
	if (ret < 0) {
		FUNC1("cinergyt2_power_ctrl() Failed to retrieve sleep "
			"state info\n");
	}

	/* Copy this pointer as we are gonna need it in the release phase */
	cinergyt2_usb_device = adap->dev;

	return 0;
}