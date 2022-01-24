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
struct fst_port_info {size_t index; scalar_t__ run; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  SETV24O ; 
 int /*<<< orphan*/  FUNC2 (struct fst_port_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * v24OpSts ; 

__attribute__((used)) static inline void
FUNC3(struct fst_port_info *port, unsigned int outputs)
{
	outputs = ~outputs & FUNC0(port->card, v24OpSts[port->index]);
	FUNC1(port->card, v24OpSts[port->index], outputs);

	if (port->run)
		FUNC2(port, SETV24O);
}