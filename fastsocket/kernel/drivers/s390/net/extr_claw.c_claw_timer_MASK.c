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
struct chbk {int /*<<< orphan*/  wait; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CLAW_TIMER ; 
 int /*<<< orphan*/  trace ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2 ( struct chbk * p_ch )
{
	FUNC0(4, trace, "timer");
        p_ch->flag |= CLAW_TIMER;
        FUNC1(&p_ch->wait);
        return;
}