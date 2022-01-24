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
 int /*<<< orphan*/  P1275_ARG_OUT_32B ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

inline char *FUNC4(int node, const char *oprop, char *buffer)
{
	char buf[32];

	if(node == -1) {
		*buffer = 0;
		return buffer;
	}
	if (oprop == buffer) {
		FUNC3 (buf, oprop);
		oprop = buf;
	}
	FUNC2 ("nextprop", FUNC0(1,P1275_ARG_IN_STRING)|
				    FUNC0(2,P1275_ARG_OUT_32B)|
				    FUNC1(3, 0), 
				    node, oprop, buffer); 
	return buffer;
}