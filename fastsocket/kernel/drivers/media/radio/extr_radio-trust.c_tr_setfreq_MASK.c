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
struct trust {unsigned long curfreq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSA6060T_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct trust*,int,int /*<<< orphan*/ ,unsigned long,unsigned long,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct trust *tr, unsigned long f)
{
	FUNC0(&tr->lock);
	tr->curfreq = f;
	f /= 160;	/* Convert to 10 kHz units	*/
	f += 1070;	/* Add 10.7 MHz IF		*/
	FUNC2(tr, 5, TSA6060T_ADDR, (f << 1) | 1, f >> 7, 0x60 | ((f >> 15) & 1), 0);
	FUNC1(&tr->lock);
}