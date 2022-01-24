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
struct lnbp21 {int /*<<< orphan*/  i2c; int /*<<< orphan*/  override_and; int /*<<< orphan*/  config; int /*<<< orphan*/  override_or; int /*<<< orphan*/  i2c_addr; } ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;
typedef  int fe_sec_tone_mode_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  LNBP21_TEN ; 
#define  SEC_TONE_OFF 129 
#define  SEC_TONE_ON 128 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe,
				fe_sec_tone_mode_t tone)
{
	struct lnbp21 *lnbp21 = (struct lnbp21 *) fe->sec_priv;
	struct i2c_msg msg = {	.addr = lnbp21->i2c_addr, .flags = 0,
				.buf = &lnbp21->config,
				.len = sizeof(lnbp21->config) };

	switch (tone) {
	case SEC_TONE_OFF:
		lnbp21->config &= ~LNBP21_TEN;
		break;
	case SEC_TONE_ON:
		lnbp21->config |= LNBP21_TEN;
		break;
	default:
		return -EINVAL;
	};

	lnbp21->config |= lnbp21->override_or;
	lnbp21->config &= lnbp21->override_and;

	return (FUNC0(lnbp21->i2c, &msg, 1) == 1) ? 0 : -EIO;
}