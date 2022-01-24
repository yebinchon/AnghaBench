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
 int /*<<< orphan*/  P1275_ARG_OUT_32B ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,char*,char*) ; 

inline char *FUNC3(int node, char *buffer)
{
	*buffer = 0;
	if(node == -1) return buffer;
	FUNC2 ("nextprop", FUNC0(2,P1275_ARG_OUT_32B)|
			       FUNC1(3, 0), 
			       node, (char *) 0x0, buffer);
	return buffer;
}