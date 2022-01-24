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
struct pg_state {void* current_address; } ;
typedef  int /*<<< orphan*/  st ;
typedef  int pgprotval_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int PGD_LEVEL_MULT ; 
 int PTE_FLAGS_MASK ; 
 int PTRS_PER_PGD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  init_level4_pgt ; 
 int /*<<< orphan*/  FUNC1 (struct pg_state*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * swapper_pg_dir ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,struct pg_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct seq_file *m)
{
#ifdef CONFIG_X86_64
	pgd_t *start = (pgd_t *) &init_level4_pgt;
#else
	pgd_t *start = swapper_pg_dir;
#endif
	int i;
	struct pg_state st;

	FUNC1(&st, 0, sizeof(st));

	for (i = 0; i < PTRS_PER_PGD; i++) {
		st.current_address = FUNC2(i * PGD_LEVEL_MULT);
		if (!FUNC5(*start)) {
			pgprotval_t prot = FUNC7(*start) & PTE_FLAGS_MASK;

			if (FUNC4(*start) || !FUNC6(*start))
				FUNC3(m, &st, FUNC0(prot), 1);
			else
				FUNC8(m, &st, *start,
					       i * PGD_LEVEL_MULT);
		} else
			FUNC3(m, &st, FUNC0(0), 1);

		start++;
	}

	/* Flush out the last page */
	st.current_address = FUNC2(PTRS_PER_PGD*PGD_LEVEL_MULT);
	FUNC3(m, &st, FUNC0(0), 0);
}