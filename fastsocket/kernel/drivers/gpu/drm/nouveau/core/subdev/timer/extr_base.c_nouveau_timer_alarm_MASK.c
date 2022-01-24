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
typedef  int /*<<< orphan*/  u32 ;
struct nouveau_timer {int /*<<< orphan*/  (* alarm ) (struct nouveau_timer*,int /*<<< orphan*/ ,struct nouveau_alarm*) ;} ;
struct nouveau_alarm {int dummy; } ;

/* Variables and functions */
 struct nouveau_timer* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_timer*,int /*<<< orphan*/ ,struct nouveau_alarm*) ; 

void
FUNC2(void *obj, u32 nsec, struct nouveau_alarm *alarm)
{
	struct nouveau_timer *ptimer = FUNC0(obj);
	ptimer->alarm(ptimer, nsec, alarm);
}