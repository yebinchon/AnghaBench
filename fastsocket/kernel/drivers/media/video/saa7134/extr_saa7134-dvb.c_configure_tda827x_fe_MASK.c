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
struct TYPE_5__ {TYPE_3__* frontend; } ;
struct videobuf_dvb_frontend {TYPE_2__ dvb; } ;
struct tda827x_config {int dummy; } ;
struct tda1004x_config {int /*<<< orphan*/  tuner_address; scalar_t__ i2c_gate; } ;
struct saa7134_dev {int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  frontends; } ;
struct TYPE_4__ {int /*<<< orphan*/  i2c_gate_ctrl; } ;
struct TYPE_6__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  tda10046_attach ; 
 int /*<<< orphan*/  tda827x_attach ; 
 int /*<<< orphan*/  tda8290_i2c_gate_ctrl ; 
 struct videobuf_dvb_frontend* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct saa7134_dev *dev,
				struct tda1004x_config *cdec_conf,
				struct tda827x_config *tuner_conf)
{
	struct videobuf_dvb_frontend *fe0;

	/* Get the first frontend */
	fe0 = FUNC1(&dev->frontends, 1);

	fe0->dvb.frontend = FUNC0(tda10046_attach, cdec_conf, &dev->i2c_adap);
	if (fe0->dvb.frontend) {
		if (cdec_conf->i2c_gate)
			fe0->dvb.frontend->ops.i2c_gate_ctrl = tda8290_i2c_gate_ctrl;
		if (FUNC0(tda827x_attach, fe0->dvb.frontend,
			       cdec_conf->tuner_address,
			       &dev->i2c_adap, tuner_conf))
			return 0;

		FUNC2("no tda827x tuner found at addr: %02x\n",
				cdec_conf->tuner_address);
	}
	return -EINVAL;
}