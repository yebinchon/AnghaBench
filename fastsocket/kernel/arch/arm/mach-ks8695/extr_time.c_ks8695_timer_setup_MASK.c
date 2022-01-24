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

/* Variables and functions */
 unsigned long CLOCK_TICK_RATE ; 
 unsigned long HZ ; 
 scalar_t__ KS8695_T1PD ; 
 scalar_t__ KS8695_T1TC ; 
 scalar_t__ KS8695_TMCON ; 
 scalar_t__ KS8695_TMR_VA ; 
 unsigned long TMCON_T1EN ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned long tmout = CLOCK_TICK_RATE / HZ;
	unsigned long tmcon;

	/* disable timer1 */
	tmcon = FUNC0(KS8695_TMR_VA + KS8695_TMCON);
	FUNC1(tmcon & ~TMCON_T1EN, KS8695_TMR_VA + KS8695_TMCON);

	FUNC1(tmout / 2, KS8695_TMR_VA + KS8695_T1TC);
	FUNC1(tmout / 2, KS8695_TMR_VA + KS8695_T1PD);

	/* re-enable timer1 */
	FUNC1(tmcon | TMCON_T1EN, KS8695_TMR_VA + KS8695_TMCON);
}