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
 int /*<<< orphan*/  P1275_ARG_OUT_BUF ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int,int,char*,int /*<<< orphan*/ ) ; 

int FUNC4(int handle, char *buffer, int bufsize)
{
	return FUNC3("instance-to-path",
			 FUNC0(1,P1275_ARG_OUT_BUF)|
			 FUNC1(3, 1),
			 handle, buffer, FUNC2(bufsize));
}