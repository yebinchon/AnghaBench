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
struct stv6110x_state {int /*<<< orphan*/ * regs; } ;
struct dvb_frontend {struct stv6110x_state* tuner_priv; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int REFCLOCK_kHz ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t STV6110x_TNG0 ; 
 size_t STV6110x_TNG1 ; 
 int /*<<< orphan*/  TNG0_N_DIV_7_0 ; 
 int /*<<< orphan*/  TNG1_DIV4SEL ; 
 int /*<<< orphan*/  TNG1_N_DIV_11_8 ; 
 int /*<<< orphan*/  TNG1_R_DIV ; 
 int /*<<< orphan*/  FUNC2 (struct stv6110x_state*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, u32 *frequency)
{
	struct stv6110x_state *stv6110x = fe->tuner_priv;

	FUNC2(stv6110x, STV6110x_TNG1, &stv6110x->regs[STV6110x_TNG1]);
	FUNC2(stv6110x, STV6110x_TNG0, &stv6110x->regs[STV6110x_TNG0]);

	*frequency = (FUNC0(FUNC1(TNG1_N_DIV_11_8, stv6110x->regs[STV6110x_TNG1]),
				 FUNC1(TNG0_N_DIV_7_0, stv6110x->regs[STV6110x_TNG0]))) * REFCLOCK_kHz;

	*frequency /= (1 << (FUNC1(TNG1_R_DIV, stv6110x->regs[STV6110x_TNG1]) +
			     FUNC1(TNG1_DIV4SEL, stv6110x->regs[STV6110x_TNG1])));

	*frequency >>= 2;

	return 0;
}