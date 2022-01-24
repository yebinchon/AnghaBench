#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lme2510_state {int i2c_talk_onoff; int i2c_gate; int i2c_tuner_gate_w; int i2c_tuner_gate_r; int i2c_tuner_addr; int /*<<< orphan*/  tuner_config; } ;
struct dvb_usb_adapter {TYPE_3__* fe; TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  set_voltage; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  udev; int /*<<< orphan*/  i2c_adap; struct lme2510_state* priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  TUNER_LG ; 
 int /*<<< orphan*/  TUNER_S7395 ; 
 int /*<<< orphan*/  dm04_lme2510_set_voltage ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int dvb_usb_lme2510_firmware ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  lme_config ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  stv0288_attach ; 
 int /*<<< orphan*/  tda10086_attach ; 
 int /*<<< orphan*/  tda10086_config ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_adapter *adap)
{
	struct lme2510_state *st = adap->dev->priv;

	int ret = 0;

	st->i2c_talk_onoff = 1;

	st->i2c_gate = 4;
	adap->fe = FUNC0(tda10086_attach, &tda10086_config,
		&adap->dev->i2c_adap);

	if (adap->fe) {
		FUNC1("TUN Found Frontend TDA10086");
		st->i2c_tuner_gate_w = 4;
		st->i2c_tuner_gate_r = 4;
		st->i2c_tuner_addr = 0xc0;
		st->tuner_config = TUNER_LG;
		if (dvb_usb_lme2510_firmware != 1) {
			dvb_usb_lme2510_firmware = 1;
			ret = FUNC3(adap->dev->udev, 1);
		} else /*stops LG/Sharp multi tuner problems*/
			dvb_usb_lme2510_firmware = 0;
		goto end;
	}

	st->i2c_gate = 5;
	adap->fe = FUNC0(stv0288_attach, &lme_config,
			&adap->dev->i2c_adap);

	if (adap->fe) {
		FUNC1("FE Found Stv0288");
		st->i2c_tuner_gate_w = 4;
		st->i2c_tuner_gate_r = 5;
		st->i2c_tuner_addr = 0xc0;
		st->tuner_config = TUNER_S7395;
		if (dvb_usb_lme2510_firmware != 0) {
			dvb_usb_lme2510_firmware = 0;
			ret = FUNC3(adap->dev->udev, 1);
		}
	} else {
		FUNC1("DM04 Not Supported");
		return -ENODEV;
	}

end:	if (ret) {
		FUNC2(adap->fe);
		adap->fe = NULL;
		return -ENODEV;
	}

	adap->fe->ops.set_voltage = dm04_lme2510_set_voltage;
	ret = FUNC4(adap);

	return ret;
}