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
struct seq_file {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMAC_FTR_GET_MB_INFO ; 
 int /*<<< orphan*/  PMAC_MB_INFO_FLAGS ; 
 int /*<<< orphan*/  PMAC_MB_INFO_MODEL ; 
 int /*<<< orphan*/  PMAC_MB_INFO_NAME ; 
 int has_l2cache ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct device_node* FUNC1 (char*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 scalar_t__ pmac_newworld ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,...) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(struct seq_file *m)
{
	struct device_node *np;
	const char *pp;
	int plen;
	int mbmodel;
	unsigned int mbflags;
	char* mbname;

	mbmodel = FUNC5(PMAC_FTR_GET_MB_INFO, NULL,
				    PMAC_MB_INFO_MODEL, 0);
	mbflags = FUNC5(PMAC_FTR_GET_MB_INFO, NULL,
				    PMAC_MB_INFO_FLAGS, 0);
	if (FUNC5(PMAC_FTR_GET_MB_INFO, NULL, PMAC_MB_INFO_NAME,
			      (long) &mbname) != 0)
		mbname = "Unknown";

	/* find motherboard type */
	FUNC6(m, "machine\t\t: ");
	np = FUNC1("/");
	if (np != NULL) {
		pp = FUNC3(np, "model", NULL);
		if (pp != NULL)
			FUNC6(m, "%s\n", pp);
		else
			FUNC6(m, "PowerMac\n");
		pp = FUNC3(np, "compatible", &plen);
		if (pp != NULL) {
			FUNC6(m, "motherboard\t:");
			while (plen > 0) {
				int l = FUNC7(pp) + 1;
				FUNC6(m, " %s", pp);
				plen -= l;
				pp += l;
			}
			FUNC6(m, "\n");
		}
		FUNC4(np);
	} else
		FUNC6(m, "PowerMac\n");

	/* print parsed model */
	FUNC6(m, "detected as\t: %d (%s)\n", mbmodel, mbname);
	FUNC6(m, "pmac flags\t: %08x\n", mbflags);

	/* find l2 cache info */
	np = FUNC0(NULL, "l2-cache");
	if (np == NULL)
		np = FUNC2(NULL, "cache");
	if (np != NULL) {
		const unsigned int *ic =
			FUNC3(np, "i-cache-size", NULL);
		const unsigned int *dc =
			FUNC3(np, "d-cache-size", NULL);
		FUNC6(m, "L2 cache\t:");
		has_l2cache = 1;
		if (FUNC3(np, "cache-unified", NULL) != 0 && dc) {
			FUNC6(m, " %dK unified", *dc / 1024);
		} else {
			if (ic)
				FUNC6(m, " %dK instruction", *ic / 1024);
			if (dc)
				FUNC6(m, "%s %dK data",
					   (ic? " +": ""), *dc / 1024);
		}
		pp = FUNC3(np, "ram-type", NULL);
		if (pp)
			FUNC6(m, " %s", pp);
		FUNC6(m, "\n");
		FUNC4(np);
	}

	/* Indicate newworld/oldworld */
	FUNC6(m, "pmac-generation\t: %s\n",
		   pmac_newworld ? "NewWorld" : "OldWorld");
}