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
typedef  int u8 ;
struct mt312_state {int dummy; } ;
struct dvb_frontend {struct mt312_state* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int* msg; } ;

/* Variables and functions */
 int DISEQC_INSTR ; 
 int /*<<< orphan*/  DISEQC_MODE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mt312_state*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct mt312_state*,int,int*,int) ; 
 int FUNC3 (struct mt312_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
				 struct dvb_diseqc_master_cmd *c)
{
	struct mt312_state *state = fe->demodulator_priv;
	int ret;
	u8 diseqc_mode;

	if ((c->msg_len == 0) || (c->msg_len > sizeof(c->msg)))
		return -EINVAL;

	ret = FUNC1(state, DISEQC_MODE, &diseqc_mode);
	if (ret < 0)
		return ret;

	ret = FUNC2(state, (0x80 | DISEQC_INSTR), c->msg, c->msg_len);
	if (ret < 0)
		return ret;

	ret = FUNC3(state, DISEQC_MODE,
			     (diseqc_mode & 0x40) | ((c->msg_len - 1) << 3)
			     | 0x04);
	if (ret < 0)
		return ret;

	/* is there a better way to wait for message to be transmitted */
	FUNC0(100);

	/* set DISEQC_MODE[2:0] to zero if a return message is expected */
	if (c->msg[0] & 0x02) {
		ret = FUNC3(state, DISEQC_MODE, (diseqc_mode & 0x40));
		if (ret < 0)
			return ret;
	}

	return 0;
}