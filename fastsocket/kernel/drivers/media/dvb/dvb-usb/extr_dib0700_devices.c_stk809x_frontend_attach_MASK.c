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
struct TYPE_3__ {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GPIO0 ; 
 int /*<<< orphan*/  GPIO10 ; 
 int /*<<< orphan*/  GPIO4 ; 
 int /*<<< orphan*/  GPIO6 ; 
 int /*<<< orphan*/  GPIO7 ; 
 int /*<<< orphan*/  GPIO9 ; 
 int /*<<< orphan*/  GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dib8000_attach ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  dib809x_dib8000_config ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_adapter *adap)
{
	FUNC1(adap->dev, GPIO6, GPIO_OUT, 1);
	FUNC4(10);
	FUNC1(adap->dev, GPIO9, GPIO_OUT, 1);
	FUNC1(adap->dev, GPIO4, GPIO_OUT, 1);
	FUNC1(adap->dev, GPIO7, GPIO_OUT, 1);

	FUNC1(adap->dev, GPIO10, GPIO_OUT, 0);

	FUNC0(adap->dev, 72, 1);

	FUNC4(10);
	FUNC1(adap->dev, GPIO10, GPIO_OUT, 1);
	FUNC4(10);
	FUNC1(adap->dev, GPIO0, GPIO_OUT, 1);

	FUNC2(&adap->dev->i2c_adap, 1, 18, 0x80);

	adap->fe = FUNC3(dib8000_attach, &adap->dev->i2c_adap, 0x80, &dib809x_dib8000_config);

	return adap->fe == NULL ?  -ENODEV : 0;
}