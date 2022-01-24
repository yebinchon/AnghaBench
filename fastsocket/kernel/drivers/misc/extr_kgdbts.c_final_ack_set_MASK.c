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
 int final_ack ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 

__attribute__((used)) static int FUNC1(char *put_str, char *arg)
{
	if (FUNC0(put_str+1, arg, 2))
		return 1;
	final_ack = 1;
	return 0;
}