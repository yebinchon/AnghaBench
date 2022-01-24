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
 int CONFIG_NOUVEAU_DEBUG_DEFAULT ; 
 int NV_DBG_DEBUG ; 
 int NV_DBG_ERROR ; 
 int NV_DBG_FATAL ; 
 int NV_DBG_INFO ; 
 int NV_DBG_PARANOIA ; 
 int NV_DBG_SPAM ; 
 int NV_DBG_TRACE ; 
 int NV_DBG_WARN ; 
 int FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 

int
FUNC2(const char *optstr, const char *sub)
{
	int mode = 1, level = CONFIG_NOUVEAU_DEBUG_DEFAULT;

	while (optstr) {
		int len = FUNC0(optstr, ",=");
		switch (optstr[len]) {
		case '=':
			if (FUNC1(optstr, sub, len))
				mode = 0;
			optstr++;
			break;
		default:
			if (mode) {
				if (!FUNC1(optstr, "fatal", len))
					level = NV_DBG_FATAL;
				else if (!FUNC1(optstr, "error", len))
					level = NV_DBG_ERROR;
				else if (!FUNC1(optstr, "warn", len))
					level = NV_DBG_WARN;
				else if (!FUNC1(optstr, "info", len))
					level = NV_DBG_INFO;
				else if (!FUNC1(optstr, "debug", len))
					level = NV_DBG_DEBUG;
				else if (!FUNC1(optstr, "trace", len))
					level = NV_DBG_TRACE;
				else if (!FUNC1(optstr, "paranoia", len))
					level = NV_DBG_PARANOIA;
				else if (!FUNC1(optstr, "spam", len))
					level = NV_DBG_SPAM;
			}

			if (optstr[len] != '\0') {
				optstr++;
				mode = 1;
				break;
			}

			return level;
		}
		optstr += len;
	}

	return level;
}