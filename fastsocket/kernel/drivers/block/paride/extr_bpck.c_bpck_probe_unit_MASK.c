#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int unit; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6 ( PIA *pi )

{	int o1, o0, f7, id;
	int t, s;

	id = pi->unit;
	s = 0;
	FUNC5(4); FUNC5(0xe); FUNC2(); FUNC3(2); 
	o1 = FUNC1()&0xf8;
	o0 = FUNC0();
	FUNC4(255-id); FUNC5(4); FUNC4(id);
	FUNC3(8); FUNC3(8); FUNC3(8);
	FUNC3(2); t = FUNC1()&0xf8;
	f7 = ((id % 8) == 7);
	if ((f7) || (t != o1)) { FUNC3(2); s = FUNC1()&0xf8; }
	if ((t == o1) && ((!f7) || (s == o1)))  {
		FUNC5(0x4c); FUNC4(o0);
		return 0;	
	}
	FUNC3(8); FUNC4(0); FUNC3(2); FUNC5(0x4c); FUNC4(o0);
	return 1;
}