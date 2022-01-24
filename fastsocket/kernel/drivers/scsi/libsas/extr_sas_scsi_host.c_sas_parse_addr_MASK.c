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
typedef  int u8 ;

/* Variables and functions */
 int SAS_ADDR_SIZE ; 
 scalar_t__ FUNC0 (char const) ; 
 char FUNC1 (char const) ; 

__attribute__((used)) static void FUNC2(u8 *sas_addr, const char *p)
{
	int i;
	for (i = 0; i < SAS_ADDR_SIZE; i++) {
		u8 h, l;
		if (!*p)
			break;
		h = FUNC0(*p) ? *p-'0' : FUNC1(*p)-'A'+10;
		p++;
		l = FUNC0(*p) ? *p-'0' : FUNC1(*p)-'A'+10;
		p++;
		sas_addr[i] = (h<<4) | l;
	}
}