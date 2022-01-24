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
typedef  scalar_t__ range_action ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int __MAX_CSSID ; 
 unsigned int __MAX_SSID ; 
 unsigned int __MAX_SUBCHANNEL ; 
 scalar_t__ add ; 
 int FUNC0 (scalar_t__,unsigned int,unsigned int,unsigned int,unsigned int,int) ; 
 scalar_t__ free ; 
 int FUNC1 (char*,unsigned int*,unsigned int*,unsigned int*,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* FUNC3 (char**,char*) ; 

__attribute__((used)) static int FUNC4(char *str, range_action action,
				      int msgtrigger)
{
	unsigned int from_cssid, to_cssid, from_ssid, to_ssid, from, to;
	int rc, totalrc;
	char *parm;
	range_action ra;

	totalrc = 0;

	while ((parm = FUNC3(&str, ","))) {
		rc = 0;
		ra = action;
		if (*parm == '!') {
			if (ra == add)
				ra = free;
			else
				ra = add;
			parm++;
		}
		if (FUNC2(parm, "all") == 0) {
			from_cssid = 0;
			from_ssid = 0;
			from = 0;
			to_cssid = __MAX_CSSID;
			to_ssid = __MAX_SSID;
			to = __MAX_SUBCHANNEL;
		} else {
			rc = FUNC1(FUNC3(&parm, "-"), &from_cssid,
					 &from_ssid, &from, msgtrigger);
			if (!rc) {
				if (parm != NULL)
					rc = FUNC1(parm, &to_cssid,
							 &to_ssid, &to,
							 msgtrigger);
				else {
					to_cssid = from_cssid;
					to_ssid = from_ssid;
					to = from;
				}
			}
		}
		if (!rc) {
			rc = FUNC0(ra, from_ssid, to_ssid, from, to,
					     msgtrigger);
			if (rc)
				totalrc = -EINVAL;
		} else
			totalrc = -EINVAL;
	}

	return totalrc;
}