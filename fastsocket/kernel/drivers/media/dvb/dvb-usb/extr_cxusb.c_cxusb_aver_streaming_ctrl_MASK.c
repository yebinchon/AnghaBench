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
 int /*<<< orphan*/  CMD_AVER_STREAM_OFF ; 
 int /*<<< orphan*/  CMD_AVER_STREAM_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct dvb_usb_adapter *adap, int onoff)
{
	if (onoff)
		FUNC0(adap->dev, CMD_AVER_STREAM_ON, NULL, 0, NULL, 0);
	else
		FUNC0(adap->dev, CMD_AVER_STREAM_OFF,
			       NULL, 0, NULL, 0);
	return 0;
}