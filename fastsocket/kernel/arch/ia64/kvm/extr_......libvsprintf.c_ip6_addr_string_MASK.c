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
typedef  int /*<<< orphan*/  u8 ;
struct printf_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC2 (char*,char*,char*,struct printf_spec) ; 

__attribute__((used)) static char *FUNC3(char *buf, char *end, const u8 *addr,
			     struct printf_spec spec, const char *fmt)
{
	char ip6_addr[sizeof("xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:255.255.255.255")];

	if (fmt[0] == 'I' && fmt[2] == 'c')
		FUNC0(ip6_addr, addr);
	else
		FUNC1(ip6_addr, addr, fmt);

	return FUNC2(buf, end, ip6_addr, spec);
}