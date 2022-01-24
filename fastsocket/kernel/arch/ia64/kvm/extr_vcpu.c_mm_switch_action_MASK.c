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
struct ia64_psr {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct ia64_psr) ; 
 int** mm_switch_table ; 

__attribute__((used)) static int FUNC1(struct ia64_psr opsr, struct ia64_psr npsr)
{
	return mm_switch_table[FUNC0(opsr)][FUNC0(npsr)];
}