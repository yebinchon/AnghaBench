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
struct dyn_ftrace {unsigned long ip; } ;

/* Variables and functions */
 unsigned char* FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (unsigned long,unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC2 () ; 

int FUNC3(struct dyn_ftrace *rec, unsigned long addr)
{
	unsigned long ip = rec->ip;
	unsigned char *old, *new;

	old=  FUNC2();
	new = FUNC0(ip, addr);
	return FUNC1(ip, old, new, 1);
}