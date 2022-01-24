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
struct mt352_config {int demod_address; int /*<<< orphan*/  demod_init; } ;
struct dvb_usb_adapter {TYPE_1__* dev; int /*<<< orphan*/  fe; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mt352_config*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mt352_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mt352_attach ; 
 int /*<<< orphan*/  umt_mt352_demod_init ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_adapter *adap)
{
	struct mt352_config umt_config;

	FUNC1(&umt_config,0,sizeof(struct mt352_config));
	umt_config.demod_init = umt_mt352_demod_init;
	umt_config.demod_address = 0xf;

	adap->fe = FUNC0(mt352_attach, &umt_config, &adap->dev->i2c_adap);

	return 0;
}