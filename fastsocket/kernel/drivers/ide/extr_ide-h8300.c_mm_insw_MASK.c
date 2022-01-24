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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/  volatile) ; 

__attribute__((used)) static void FUNC1(unsigned long addr, void *buf, u32 len)
{
	unsigned short *bp = (unsigned short *)buf;
	for (; len > 0; len--, bp++)
		*bp = FUNC0(*(volatile u16 *)addr);
}