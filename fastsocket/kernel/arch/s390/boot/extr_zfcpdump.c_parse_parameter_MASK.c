#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* parm_dir; char* parm_compress; char* parm_debug; int /*<<< orphan*/  parm_mode; int /*<<< orphan*/  parm_mem; int /*<<< orphan*/ * parm_part; } ;

/* Variables and functions */
 char* PARM_COMP ; 
 char* PARM_COMP_DFLT ; 
 char* PARM_COMP_GZIP ; 
 char* PARM_COMP_NONE ; 
 char* PARM_DEBUG ; 
 char* PARM_DEBUG_DFLT ; 
 char* PARM_DEBUG_MAX ; 
 char* PARM_DEBUG_MIN ; 
 char* PARM_DIR ; 
 char* PARM_DIR_DFLT ; 
 char* PARM_MEM ; 
 char* PARM_MODE ; 
 char* PARM_MODE_AUTO ; 
 int /*<<< orphan*/  PARM_MODE_AUTO_NUM ; 
 char* PARM_MODE_DFLT ; 
 char* PARM_MODE_INTERACT ; 
 int /*<<< orphan*/  PARM_MODE_INTERACT_NUM ; 
 char* PARM_PART ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 char* FUNC2 (char*) ; 
 TYPE_1__ g ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 void* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(char *parameter)
{
	char *token;
	char *end_ptr;

	token = FUNC4(parameter, "=");
	if (token == NULL)
		return 0;

	if (FUNC3(token, PARM_DIR) == 0) {
		/* Dump Dir */
		g.parm_dir = FUNC4(NULL, "=");
		if (g.parm_dir == NULL) {
			FUNC1("No value for '%s' parameter specified\n",
				    PARM_DIR);
			FUNC1("Using default: %s\n", PARM_DIR_DFLT);
			g.parm_dir = PARM_DIR_DFLT;
		}
	} else if (FUNC3(token, PARM_PART) == 0) {
		/* Dump Partition */
		g.parm_part = FUNC4(NULL, "=");
		if (g.parm_part == NULL) {
			FUNC0("No value for '%s' parameter "
				  "specified\n", PARM_PART);
			return -1;
		}
	} else if (FUNC3(token, PARM_MEM) == 0) {
		/* Dump mem */
		char *mem_str = FUNC4(NULL, "=");
		if (mem_str == NULL) {
			FUNC0("No value for '%s' parameter "
				  "specified\n", PARM_MEM);
			return -1;
		}
		g.parm_mem = FUNC5(mem_str, &end_ptr, 0);
		if (*end_ptr != 0) {
			FUNC0("Invalid value for '%s' parameter "
				  "specified\n", PARM_MEM);
			return -1;
		}
	} else if (FUNC3(token, PARM_COMP) == 0) {
		/* Dump Compression */
		g.parm_compress = FUNC4(NULL, "=");
		if (g.parm_compress == NULL) {
			FUNC1("No value for '%s' parameter "
				   "specified\n", PARM_COMP);
			FUNC1("Using default: %s\n", PARM_COMP_DFLT);
			g.parm_compress = PARM_COMP_DFLT;
		} else if ((FUNC3(g.parm_compress, PARM_COMP_GZIP) != 0) &&
			   (FUNC3(g.parm_compress, PARM_COMP_NONE) != 0)) {
			FUNC1("Unknown dump compression '%s' "
				   "specified!\n", g.parm_compress);
			FUNC1("Using default: %s\n", PARM_COMP_DFLT);
			g.parm_compress = PARM_COMP_DFLT;
		}
	} else if (FUNC3(token, PARM_DEBUG) == 0) {
		/* Dump Debug */
		char *s = FUNC4(NULL, "=");
		if (s == NULL) {
			FUNC1("No value for '%s' parameter "
				"specified\n", PARM_DEBUG);
			FUNC1("Using default: %d\n", PARM_DEBUG_DFLT);
		} else {
			g.parm_debug = FUNC2(s);
			if ((g.parm_debug < PARM_DEBUG_MIN) ||
			    (g.parm_debug > PARM_DEBUG_MAX)) {
				FUNC1("Invalid value (%i) for %s "
				"parameter specified (allowed range is "
				"%i - %i)\n", g.parm_debug, PARM_DEBUG,
				PARM_DEBUG_MIN, PARM_DEBUG_MAX);
				FUNC1("Using default: %i\n",
				PARM_DEBUG_DFLT);
				g.parm_debug = PARM_DEBUG_DFLT;
			}
		}
	} else if (FUNC3(token, PARM_MODE) == 0) {
		/* Dump Mode */
		char *s = FUNC4(NULL, "=");
		if (s == NULL) {
			FUNC1("No value for '%s' parameter "
				"specified\n", PARM_MODE);
			FUNC1("Using default: %s\n", PARM_MODE_DFLT);
		} else if (FUNC3(s, PARM_MODE_INTERACT) == 0) {
			g.parm_mode = PARM_MODE_INTERACT_NUM;
		} else if (FUNC3(s, PARM_MODE_AUTO) == 0) {
			g.parm_mode = PARM_MODE_AUTO_NUM;
		} else {
			FUNC1("Unknown dump mode: %s\n", s);
			FUNC1("Using default: %s\n", PARM_MODE_DFLT);
		}
	}
	return 0;
}