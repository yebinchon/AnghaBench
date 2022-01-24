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
struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB3000MB_POWER_DOWN ; 
 int /*<<< orphan*/  DIB3000MB_REG_POWER_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend* fe)
{
	struct dib3000_state* state = fe->demodulator_priv;
	FUNC0("dib3000mb is going to bed.\n");
	FUNC1(DIB3000MB_REG_POWER_CONTROL, DIB3000MB_POWER_DOWN);
	return 0;
}