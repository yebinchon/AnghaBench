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
 int* cont_map ; 
 int FUNC0 (int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4( PIA *pi, int cont, int regr )

{	int  a, b, r;

        r = regr + cont_map[cont];

        FUNC2(r); FUNC3(0xb); FUNC3(0xa); FUNC3(9); FUNC3(0xc); FUNC3(9); 
	a = FUNC1(); FUNC3(0xc);  b = FUNC1(); FUNC3(9); FUNC3(0xc); FUNC3(9);
	return FUNC0(a,b);

}