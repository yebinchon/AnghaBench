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

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P1275_ARG_IN_BUF ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prom_stdout ; 

inline int
FUNC4(char c)
{
	char outc;
	
	outc = c;
	if (FUNC3("write", FUNC0(1,P1275_ARG_IN_BUF)|
			       FUNC1(3,1),
			       prom_stdout, &outc, FUNC2(1)) == 1)
		return 0;
	else
		return -1;
}