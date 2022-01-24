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
struct tda18271_priv {int /*<<< orphan*/  tm_rfcal; TYPE_1__* rf_cal_state; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;
struct TYPE_2__ {int rfmax; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*) ; 
 int FUNC3 (struct dvb_frontend*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	unsigned int i;
	int ret;

	FUNC5("tda18271: performing RF tracking filter calibration\n");

	/* wait for die temperature stabilization */
	FUNC0(200);

	ret = FUNC1(fe);
	if (FUNC4(ret))
		goto fail;

	/* rf band calibration */
	for (i = 0; priv->rf_cal_state[i].rfmax != 0; i++) {
		ret =
		FUNC3(fe, 1000 *
						  priv->rf_cal_state[i].rfmax);
		if (FUNC4(ret))
			goto fail;
	}

	priv->tm_rfcal = FUNC2(fe);
fail:
	return ret;
}