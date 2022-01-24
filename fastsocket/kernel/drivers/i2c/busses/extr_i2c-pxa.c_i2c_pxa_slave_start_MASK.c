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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct pxa_i2c {TYPE_1__ adap; } ;

/* Variables and functions */
 int ICR_ACKNAK ; 
 int ICR_SCLE ; 
 int ICR_START ; 
 int ICR_STOP ; 
 int ICR_TB ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pxa_i2c *i2c, u32 isr)
{
	int timeout;

	/*
	 * slave could interrupt in the middle of us generating a
	 * start condition... if this happens, we'd better back off
	 * and stop holding the poor thing up
	 */
	FUNC4(FUNC3(FUNC1(i2c)) & ~(ICR_START|ICR_STOP), FUNC1(i2c));
	FUNC4(FUNC3(FUNC1(i2c)) | ICR_TB | ICR_ACKNAK, FUNC1(i2c));

	timeout = 0x10000;

	while (1) {
		if ((FUNC3(FUNC0(i2c)) & 2) == 2)
			break;

		timeout--;

		if (timeout <= 0) {
			FUNC2(&i2c->adap.dev, "timeout waiting for SCL high\n");
			break;
		}
	}

	FUNC4(FUNC3(FUNC1(i2c)) & ~ICR_SCLE, FUNC1(i2c));
}