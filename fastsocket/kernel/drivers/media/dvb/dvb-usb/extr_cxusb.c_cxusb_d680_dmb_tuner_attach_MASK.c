#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_adapter {TYPE_1__* dev; int /*<<< orphan*/  fe; } ;
struct dvb_frontend {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  d680_dmb_tuner ; 
 struct dvb_frontend* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mxl5005s_attach ; 

__attribute__((used)) static int FUNC1(struct dvb_usb_adapter *adap)
{
	struct dvb_frontend *fe;
	fe = FUNC0(mxl5005s_attach, adap->fe,
			&adap->dev->i2c_adap, &d680_dmb_tuner);
	return (fe == NULL) ? -EIO : 0;
}