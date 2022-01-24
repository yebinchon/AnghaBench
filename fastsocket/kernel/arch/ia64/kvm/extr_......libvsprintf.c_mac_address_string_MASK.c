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
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char*,char*,struct printf_spec) ; 

__attribute__((used)) static char *FUNC2(char *buf, char *end, u8 *addr,
				struct printf_spec spec, const char *fmt)
{
	char mac_addr[sizeof("xx:xx:xx:xx:xx:xx")];
	char *p = mac_addr;
	int i;

	for (i = 0; i < 6; i++) {
		p = FUNC0(p, addr[i]);
		if (fmt[0] == 'M' && i != 5)
			*p++ = ':';
	}
	*p = '\0';

	return FUNC1(buf, end, mac_addr, spec);
}