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
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int const,int const,int const,int const) ; 

void FUNC1(const __u8 *addr, char *buf)
{
	FUNC0(buf, "%i.%i.%i.%i", addr[0], addr[1], addr[2], addr[3]);
}