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
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int /*<<< orphan*/  i2c_master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dib8000_state*) ; 

__attribute__((used)) static void FUNC2(struct dvb_frontend *fe)
{
	struct dib8000_state *st = fe->demodulator_priv;
	FUNC0(&st->i2c_master);
	FUNC1(st);
}