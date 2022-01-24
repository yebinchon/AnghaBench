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
 int H_DABRX_KERNEL ; 
 int H_DABRX_USER ; 
 int /*<<< orphan*/  H_SET_XDABR ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long,int) ; 

__attribute__((used)) static int FUNC1(unsigned long dabr)
{
	/* We want to catch accesses from kernel and userspace */
	return FUNC0(H_SET_XDABR, dabr,
			H_DABRX_KERNEL | H_DABRX_USER);
}