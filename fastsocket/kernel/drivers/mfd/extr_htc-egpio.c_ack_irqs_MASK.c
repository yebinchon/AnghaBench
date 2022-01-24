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
struct egpio_info {int ack_register; int bus_shift; int /*<<< orphan*/  ack_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct egpio_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct egpio_info *ei)
{
	FUNC0(ei->ack_write, ei, ei->ack_register);
	FUNC1("EGPIO ack - write %x to base+%x\n",
			ei->ack_write, ei->ack_register << ei->bus_shift);
}