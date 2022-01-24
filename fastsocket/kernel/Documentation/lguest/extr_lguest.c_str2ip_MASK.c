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
typedef  unsigned int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int FUNC1 (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static u32 FUNC2(const char *ipaddr)
{
	unsigned int b[4];

	if (FUNC1(ipaddr, "%u.%u.%u.%u", &b[0], &b[1], &b[2], &b[3]) != 4)
		FUNC0(1, "Failed to parse IP address '%s'", ipaddr);
	return (b[0] << 24) | (b[1] << 16) | (b[2] << 8) | b[3];
}