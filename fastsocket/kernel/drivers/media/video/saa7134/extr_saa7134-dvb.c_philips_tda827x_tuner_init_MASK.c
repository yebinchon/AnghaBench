#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tda1004x_state {TYPE_2__* config; } ;
struct saa7134_dev {int dummy; } ;
struct dvb_frontend {struct tda1004x_state* demodulator_priv; TYPE_1__* dvb; } ;
struct TYPE_4__ {int antenna_switch; } ;
struct TYPE_3__ {struct saa7134_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe)
{
	struct saa7134_dev *dev = fe->dvb->priv;
	struct tda1004x_state *state = fe->demodulator_priv;

	switch (state->config->antenna_switch) {
	case 0: break;
	case 1:	FUNC0("setting GPIO21 to 0 (TV antenna?)\n");
		FUNC1(dev, 21, 0);
		break;
	case 2: FUNC0("setting GPIO21 to 1 (Radio antenna?)\n");
		FUNC1(dev, 21, 1);
		break;
	}
	return 0;
}