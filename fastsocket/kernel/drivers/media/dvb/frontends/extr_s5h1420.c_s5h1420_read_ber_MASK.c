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
typedef  int u32 ;
struct s5h1420_state {int dummy; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct s5h1420_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct s5h1420_state*,int,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend* fe, u32* ber)
{
	struct s5h1420_state* state = fe->demodulator_priv;

	FUNC2(state, 0x46, 0x1d);
	FUNC0(25);

	*ber = (FUNC1(state, 0x48) << 8) | FUNC1(state, 0x47);

	return 0;
}