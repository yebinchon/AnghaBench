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
 int /*<<< orphan*/  P1275_ARG_IN_STRING ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (char*,int,int,char const*) ; 

inline int FUNC3(int node, const char *prop)
{
	if((!node) || (!prop)) return -1;
	return FUNC2 ("getproplen", 
			  FUNC0(1,P1275_ARG_IN_STRING)|
			  FUNC1(2, 1), 
			  node, prop);
}