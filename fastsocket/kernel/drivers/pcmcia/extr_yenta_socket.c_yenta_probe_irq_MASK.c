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
typedef  unsigned int u32 ;
struct yenta_socket {int dummy; } ;

/* Variables and functions */
 int CB_CSTSMASK ; 
 int CB_FCARDSTS ; 
 int /*<<< orphan*/  CB_SOCKET_EVENT ; 
 int /*<<< orphan*/  CB_SOCKET_FORCE ; 
 int /*<<< orphan*/  CB_SOCKET_MASK ; 
 int /*<<< orphan*/  I365_CSCINT ; 
 int I365_CSC_STSCHG ; 
 int /*<<< orphan*/  FUNC0 (struct yenta_socket*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct yenta_socket*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (unsigned long) ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static unsigned int FUNC5(struct yenta_socket *socket, u32 isa_irq_mask)
{
	int i;
	unsigned long val;
	u32 mask;

	/*
	 * Probe for usable interrupts using the force
	 * register to generate bogus card status events.
	 */
	FUNC0(socket, CB_SOCKET_EVENT, -1);
	FUNC0(socket, CB_SOCKET_MASK, CB_CSTSMASK);
	FUNC1(socket, I365_CSCINT, 0);
	val = FUNC3() & isa_irq_mask;
	for (i = 1; i < 16; i++) {
		if (!((val >> i) & 1))
			continue;
		FUNC1(socket, I365_CSCINT, I365_CSC_STSCHG | (i << 4));
		FUNC0(socket, CB_SOCKET_FORCE, CB_FCARDSTS);
		FUNC4(100);
		FUNC0(socket, CB_SOCKET_EVENT, -1);
	}
	FUNC0(socket, CB_SOCKET_MASK, 0);
	FUNC1(socket, I365_CSCINT, 0);

	mask = FUNC2(val) & 0xffff;

	return mask;
}