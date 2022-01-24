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
 int /*<<< orphan*/  cec4 ; 
 int* cont_map ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2( PIA *pi, int cont, int regr, int val)

{	int r;

        r = regr + cont_map[cont];

	FUNC1(4); FUNC0(r); cec4; 
	FUNC0(val);
	FUNC1(5);FUNC1(7);FUNC1(5);FUNC1(4);
}