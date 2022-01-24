#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_adapter {int /*<<< orphan*/ * fe; TYPE_1__* dev; } ;
struct dib0700_state {int* mt2060_if1; int is_dib7000pc; } ;
struct TYPE_3__ {int /*<<< orphan*/  i2c_adap; struct dib0700_state* priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GPIO0 ; 
 int /*<<< orphan*/  GPIO10 ; 
 int /*<<< orphan*/  GPIO6 ; 
 int /*<<< orphan*/  GPIO9 ; 
 int /*<<< orphan*/  GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dib7000m_attach ; 
 int /*<<< orphan*/  dib7000p_attach ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  stk7700p_dib7000m_config ; 
 int /*<<< orphan*/  stk7700p_dib7000p_config ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_adapter *adap)
{
	struct dib0700_state *st = adap->dev->priv;
	/* unless there is no real power management in DVB - we leave the device on GPIO6 */

	FUNC1(adap->dev, GPIO10, GPIO_OUT, 0);
	FUNC1(adap->dev, GPIO6,  GPIO_OUT, 0); FUNC4(50);

	FUNC1(adap->dev, GPIO6,  GPIO_OUT, 1); FUNC4(10);
	FUNC1(adap->dev, GPIO9,  GPIO_OUT, 1);

	FUNC1(adap->dev, GPIO10, GPIO_OUT, 0); FUNC4(10);
	FUNC0(adap->dev, 72, 1);
	FUNC1(adap->dev, GPIO10, GPIO_OUT, 1); FUNC4(100);

	FUNC1(adap->dev,  GPIO0, GPIO_OUT, 1);

	st->mt2060_if1[0] = 1220;

	if (FUNC2(&adap->dev->i2c_adap)) {
		adap->fe = FUNC3(dib7000p_attach, &adap->dev->i2c_adap, 18, &stk7700p_dib7000p_config);
		st->is_dib7000pc = 1;
	} else
		adap->fe = FUNC3(dib7000m_attach, &adap->dev->i2c_adap, 18, &stk7700p_dib7000m_config);

	return adap->fe == NULL ? -ENODEV : 0;
}