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
typedef  int pgprotval_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int _PAGE_GLOBAL ; 
 int _PAGE_NX ; 
 int _PAGE_PAT ; 
 int _PAGE_PCD ; 
 int _PAGE_PSE ; 
 int _PAGE_PWT ; 
 int _PAGE_RW ; 
 int _PAGE_USER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, pgprot_t prot, int level)
{
	pgprotval_t pr = FUNC0(prot);
	static const char * const level_name[] =
		{ "cr3", "pgd", "pud", "pmd", "pte" };

	if (!FUNC0(prot)) {
		/* Not present */
		FUNC1(m, "                          ");
	} else {
		if (pr & _PAGE_USER)
			FUNC1(m, "USR ");
		else
			FUNC1(m, "    ");
		if (pr & _PAGE_RW)
			FUNC1(m, "RW ");
		else
			FUNC1(m, "ro ");
		if (pr & _PAGE_PWT)
			FUNC1(m, "PWT ");
		else
			FUNC1(m, "    ");
		if (pr & _PAGE_PCD)
			FUNC1(m, "PCD ");
		else
			FUNC1(m, "    ");

		/* Bit 9 has a different meaning on level 3 vs 4 */
		if (level <= 3) {
			if (pr & _PAGE_PSE)
				FUNC1(m, "PSE ");
			else
				FUNC1(m, "    ");
		} else {
			if (pr & _PAGE_PAT)
				FUNC1(m, "pat ");
			else
				FUNC1(m, "    ");
		}
		if (pr & _PAGE_GLOBAL)
			FUNC1(m, "GLB ");
		else
			FUNC1(m, "    ");
		if (pr & _PAGE_NX)
			FUNC1(m, "NX ");
		else
			FUNC1(m, "x  ");
	}
	FUNC1(m, "%s\n", level_name[level]);
}