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
struct pxa_i2c {int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int ICR_ALDIE ; 
 int ICR_START ; 
 int ICR_STOP ; 
 int ICR_TB ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_i2c*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct pxa_i2c *i2c)
{
	u32 icr;

	/*
	 * Step 1: target slave address into IDBR
	 */
	FUNC4(FUNC2(i2c->msg), FUNC1(i2c));

	/*
	 * Step 2: initiate the write.
	 */
	icr = FUNC3(FUNC0(i2c)) & ~(ICR_STOP | ICR_ALDIE);
	FUNC4(icr | ICR_START | ICR_TB, FUNC0(i2c));
}