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
struct dvb_usb_adapter {size_t id; TYPE_1__* dev; int /*<<< orphan*/ * fe; } ;
struct dib0700_state {int* mt2060_if1; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2c_adap; struct dib0700_state* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_DIB3000P_I2C_ADDRESS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GPIO0 ; 
 int /*<<< orphan*/  GPIO10 ; 
 int /*<<< orphan*/  GPIO6 ; 
 int /*<<< orphan*/  GPIO_OUT ; 
 int /*<<< orphan*/ * bristol_dib3000mc_config ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dib3000mc_attach ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ force_lna_activation ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_adapter *adap)
{
	struct dib0700_state *st = adap->dev->priv;
	if (adap->id == 0) {
		FUNC0(adap->dev, GPIO6,  GPIO_OUT, 0); FUNC3(10);
		FUNC0(adap->dev, GPIO6,  GPIO_OUT, 1); FUNC3(10);
		FUNC0(adap->dev, GPIO10, GPIO_OUT, 0); FUNC3(10);
		FUNC0(adap->dev, GPIO10, GPIO_OUT, 1); FUNC3(10);

		if (force_lna_activation)
			FUNC0(adap->dev, GPIO0, GPIO_OUT, 1);
		else
			FUNC0(adap->dev, GPIO0, GPIO_OUT, 0);

		if (FUNC1(&adap->dev->i2c_adap, 2, DEFAULT_DIB3000P_I2C_ADDRESS, bristol_dib3000mc_config) != 0) {
			FUNC0(adap->dev, GPIO6, GPIO_OUT, 0); FUNC3(10);
			return -ENODEV;
		}
	}
	st->mt2060_if1[adap->id] = 1220;
	return (adap->fe = FUNC2(dib3000mc_attach, &adap->dev->i2c_adap,
		(10 + adap->id) << 1, &bristol_dib3000mc_config[adap->id])) == NULL ? -ENODEV : 0;
}