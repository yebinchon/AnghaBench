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
struct TYPE_2__ {int* read; int* write; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_SERIAL0_READ ; 
 TYPE_1__* kgdb_port ; 
 int /*<<< orphan*/  tr_ready ; 

void
FUNC1(int val)
{
	if (!kgdb_port)
		return;

	while (!(*kgdb_port->read & FUNC0(R_SERIAL0_READ, tr_ready)))
		;
	*kgdb_port->write = val;
}