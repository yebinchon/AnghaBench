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
struct s5h1420_state {int dummy; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;
typedef  scalar_t__ fe_sec_mini_cmd_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 scalar_t__ SEC_MINI_B ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct s5h1420_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct s5h1420_state*,int,int) ; 
 scalar_t__ FUNC3 (int,unsigned long) ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 

__attribute__((used)) static int FUNC5 (struct dvb_frontend* fe, fe_sec_mini_cmd_t minicmd)
{
	struct s5h1420_state* state = fe->demodulator_priv;
	u8 val;
	int result = 0;
	unsigned long timeout;

	/* setup for tone burst */
	val = FUNC1(state, 0x3b);
	FUNC2(state, 0x3b, (FUNC1(state, 0x3b) & 0x70) | 0x01);

	/* set value for B position if requested */
	if (minicmd == SEC_MINI_B) {
		FUNC2(state, 0x3b, FUNC1(state, 0x3b) | 0x04);
	}
	FUNC0(15);

	/* start transmission */
	FUNC2(state, 0x3b, FUNC1(state, 0x3b) | 0x08);

	/* wait for transmission to complete */
	timeout = jiffies + ((100*HZ) / 1000);
	while(FUNC4(jiffies, timeout)) {
		if (!(FUNC1(state, 0x3b) & 0x08))
			break;

		FUNC0(5);
	}
	if (FUNC3(jiffies, timeout))
		result = -ETIMEDOUT;

	/* restore original settings */
	FUNC2(state, 0x3b, val);
	FUNC0(15);
	return result;
}