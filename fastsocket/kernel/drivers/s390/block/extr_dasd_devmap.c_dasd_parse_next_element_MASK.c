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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3( char *parsestring ) {
	char * residual_str;
	residual_str = FUNC1(parsestring);
	if (!FUNC0(residual_str))
		return residual_str;
	residual_str = FUNC2(parsestring);
	return residual_str;
}