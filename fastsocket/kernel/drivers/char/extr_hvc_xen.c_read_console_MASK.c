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
typedef  int /*<<< orphan*/  uint32_t ;
struct xencons_interface {int in_cons; int in_prod; char* in; } ;
typedef  int XENCONS_RING_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct xencons_interface* FUNC4 () ; 

__attribute__((used)) static int FUNC5(uint32_t vtermno, char *buf, int len)
{
	struct xencons_interface *intf = FUNC4();
	XENCONS_RING_IDX cons, prod;
	int recv = 0;

	cons = intf->in_cons;
	prod = intf->in_prod;
	FUNC2();			/* get pointers before reading ring */
	FUNC0((prod - cons) > sizeof(intf->in));

	while (cons != prod && recv < len)
		buf[recv++] = intf->in[FUNC1(cons++, intf->in)];

	FUNC2();			/* read ring before consuming */
	intf->in_cons = cons;

	FUNC3();
	return recv;
}