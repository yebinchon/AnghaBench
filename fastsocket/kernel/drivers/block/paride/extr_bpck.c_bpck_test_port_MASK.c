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
typedef  int /*<<< orphan*/  PIA ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 ( PIA *pi ) 	/* check for 8-bit port */

{	int	i, r, m;

	FUNC2(0x2c); i = FUNC0(); FUNC1(255-i); r = FUNC0(); FUNC1(i);
	m = -1;
	if (r == i) m = 2;
	if (r == (255-i)) m = 0;

	FUNC2(0xc); i = FUNC0(); FUNC1(255-i); r = FUNC0(); FUNC1(i);
	if (r != (255-i)) m = -1;
	
	if (m == 0) { FUNC2(6); FUNC2(0xc); r = FUNC0(); FUNC1(0xaa); FUNC1(r); FUNC1(0xaa); }
	if (m == 2) { FUNC2(0x26); FUNC2(0xc); }

	if (m == -1) return 0;
	return 5;
}