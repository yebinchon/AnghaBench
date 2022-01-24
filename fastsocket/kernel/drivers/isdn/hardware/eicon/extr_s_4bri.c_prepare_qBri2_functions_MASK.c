#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int tasks; TYPE_1__* QuadroList; } ;
struct TYPE_4__ {int /*<<< orphan*/ * QuadroAdapter; } ;
typedef  TYPE_2__* PISDN_ADAPTER ;

/* Variables and functions */
 int MQ_INSTANCE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1 (PISDN_ADAPTER IoAdapter) {
	if (!IoAdapter->tasks) {
		IoAdapter->tasks = MQ_INSTANCE_COUNT;
	}

	FUNC0 (IoAdapter->QuadroList->QuadroAdapter[0]) ;
	if (IoAdapter->tasks > 1) {
		FUNC0 (IoAdapter->QuadroList->QuadroAdapter[1]) ;
		FUNC0 (IoAdapter->QuadroList->QuadroAdapter[2]) ;
		FUNC0 (IoAdapter->QuadroList->QuadroAdapter[3]) ;
	}

}