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
 int FUNC0 (char const*,int const,char const*,int const) ; 
 scalar_t__ FUNC1 (char const*,int const,char const*,int const) ; 

__attribute__((used)) static int FUNC2(const char *old_ip_addr, \
	const int old_port, const char *new_ip_addr, const int new_port)
{
	int result;

	result = FUNC0(old_ip_addr, old_port, \
				new_ip_addr, new_port);
	result += FUNC1(old_ip_addr, old_port, \
					new_ip_addr, new_port);
	return result;
}