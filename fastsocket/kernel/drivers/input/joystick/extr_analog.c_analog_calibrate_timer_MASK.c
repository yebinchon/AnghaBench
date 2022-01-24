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
struct gameport {int dummy; } ;
struct analog_port {unsigned int loop; void* speed; struct gameport* gameport; } ;

/* Variables and functions */
 void* FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int analog_faketime ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

__attribute__((used)) static void FUNC7(struct analog_port *port)
{
	struct gameport *gameport = port->gameport;
	unsigned int i, t, tx, t1, t2, t3;
	unsigned long flags;

	FUNC4(flags);
	FUNC1(t1);
#ifdef FAKE_TIME
	analog_faketime += 830;
#endif
	FUNC5(1);
	FUNC1(t2);
	FUNC1(t3);
	FUNC3(flags);

	port->speed = FUNC0(t1, t2) - FUNC0(t2, t3);

	tx = ~0;

	for (i = 0; i < 50; i++) {
		FUNC4(flags);
		FUNC1(t1);
		for (t = 0; t < 50; t++) { FUNC2(gameport); FUNC1(t2); }
		FUNC1(t3);
		FUNC3(flags);
		FUNC6(i);
		t = FUNC0(t1, t2) - FUNC0(t2, t3);
		if (t < tx) tx = t;
	}

        port->loop = tx / 50;
}