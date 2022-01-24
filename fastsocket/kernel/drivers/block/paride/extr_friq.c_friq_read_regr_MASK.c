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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* cont_map ; 
 int FUNC1 (int,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4( PIA *pi, int cont, int regr )

{	int	h,l,r;

	r = regr + cont_map[cont];

	FUNC0(r);
	FUNC3(6); l = FUNC2();
	FUNC3(4); h = FUNC2();
	FUNC3(4); 

	return FUNC1(l,h);

}