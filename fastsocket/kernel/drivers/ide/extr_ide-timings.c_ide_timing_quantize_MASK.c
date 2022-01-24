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
struct ide_timing {int setup; int act8b; int rec8b; int cyc8b; int active; int recover; int cycle; int udma; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(struct ide_timing *t, struct ide_timing *q,
				int T, int UT)
{
	q->setup   = FUNC0(t->setup   * 1000,  T);
	q->act8b   = FUNC0(t->act8b   * 1000,  T);
	q->rec8b   = FUNC0(t->rec8b   * 1000,  T);
	q->cyc8b   = FUNC0(t->cyc8b   * 1000,  T);
	q->active  = FUNC0(t->active  * 1000,  T);
	q->recover = FUNC0(t->recover * 1000,  T);
	q->cycle   = FUNC0(t->cycle   * 1000,  T);
	q->udma    = FUNC0(t->udma    * 1000, UT);
}