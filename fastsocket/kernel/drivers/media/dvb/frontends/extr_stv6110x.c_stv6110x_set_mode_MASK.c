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
struct stv6110x_state {int /*<<< orphan*/ * regs; } ;
struct dvb_frontend {struct stv6110x_state* tuner_priv; } ;
typedef  enum tuner_mode { ____Placeholder_tuner_mode } tuner_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL1_LPT ; 
 int /*<<< orphan*/  CTRL1_RX ; 
 int /*<<< orphan*/  CTRL1_SYN ; 
 int EIO ; 
 int /*<<< orphan*/  FE_ERROR ; 
 size_t STV6110x_CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  TUNER_SLEEP 129 
#define  TUNER_WAKE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC2 (struct stv6110x_state*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, enum tuner_mode mode)
{
	struct stv6110x_state *stv6110x = fe->tuner_priv;
	int ret;

	switch (mode) {
	case TUNER_SLEEP:
		FUNC0(stv6110x->regs[STV6110x_CTRL1], CTRL1_SYN, 0);
		FUNC0(stv6110x->regs[STV6110x_CTRL1], CTRL1_RX, 0);
		FUNC0(stv6110x->regs[STV6110x_CTRL1], CTRL1_LPT, 0);
		break;

	case TUNER_WAKE:
		FUNC0(stv6110x->regs[STV6110x_CTRL1], CTRL1_SYN, 1);
		FUNC0(stv6110x->regs[STV6110x_CTRL1], CTRL1_RX, 1);
		FUNC0(stv6110x->regs[STV6110x_CTRL1], CTRL1_LPT, 1);
		break;
	}

	ret = FUNC2(stv6110x, STV6110x_CTRL1, stv6110x->regs[STV6110x_CTRL1]);
	if (ret < 0) {
		FUNC1(FE_ERROR, 1, "I/O Error");
		return -EIO;
	}

	return 0;
}