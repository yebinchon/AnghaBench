#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kernel_param {scalar_t__ arg; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC2(char *buffer, struct kernel_param *kp)
{
	int type = *((unsigned int *)kp->arg);

	return FUNC1(buffer, "%s", FUNC0(type)->name);
}