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
 int poison ; 
 int redzone ; 
 int sanity ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int tracing ; 
 int tracking ; 

__attribute__((used)) static int FUNC2(char *opt)
{
	if (!opt || !opt[0] || FUNC1(opt, "-") == 0)
		return 1;

	if (FUNC0(opt, "a") == 0) {
		sanity = 1;
		poison = 1;
		redzone = 1;
		tracking = 1;
		return 1;
	}

	for ( ; *opt; opt++)
	 	switch (*opt) {
		case 'F' : case 'f':
			if (sanity)
				return 0;
			sanity = 1;
			break;
		case 'P' : case 'p':
			if (poison)
				return 0;
			poison = 1;
			break;

		case 'Z' : case 'z':
			if (redzone)
				return 0;
			redzone = 1;
			break;

		case 'U' : case 'u':
			if (tracking)
				return 0;
			tracking = 1;
			break;

		case 'T' : case 't':
			if (tracing)
				return 0;
			tracing = 1;
			break;
		default:
			return 0;
		}
	return 1;
}