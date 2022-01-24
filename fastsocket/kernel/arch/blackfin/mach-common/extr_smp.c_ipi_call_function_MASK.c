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
struct TYPE_2__ {void (* func ) (void*) ;int wait; int /*<<< orphan*/  waitmask; int /*<<< orphan*/  pending; void* info; } ;
struct ipi_message {TYPE_1__ call_struct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipi_message*) ; 

__attribute__((used)) static void FUNC2(unsigned int cpu, struct ipi_message *msg)
{
	int wait;
	void (*func)(void *info);
	void *info;
	func = msg->call_struct.func;
	info = msg->call_struct.info;
	wait = msg->call_struct.wait;
	FUNC0(cpu, msg->call_struct.pending);
	func(info);
	if (wait)
		FUNC0(cpu, msg->call_struct.waitmask);
	else
		FUNC1(msg);
}