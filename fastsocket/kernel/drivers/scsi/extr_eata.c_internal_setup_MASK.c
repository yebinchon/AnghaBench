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
 int MAX_INT_PARAM ; 
 int eisa_probe ; 
 int ext_tran ; 
 int* io_port ; 
 int isa_probe ; 
 int link_statistics ; 
 int linked_comm ; 
 int max_queue_depth ; 
 int pci_probe ; 
 int rev_scan ; 
 int setup_done ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int tag_mode ; 

__attribute__((used)) static void FUNC3(char *str, int *ints)
{
	int i, argc = ints[0];
	char *cur = str, *pc;

	if (argc > 0) {
		if (argc > MAX_INT_PARAM)
			argc = MAX_INT_PARAM;

		for (i = 0; i < argc; i++)
			io_port[i] = ints[i + 1];

		io_port[i] = 0;
		setup_done = 1;
	}

	while (cur && (pc = FUNC1(cur, ':'))) {
		int val = 0, c = *++pc;

		if (c == 'n' || c == 'N')
			val = 0;
		else if (c == 'y' || c == 'Y')
			val = 1;
		else
			val = (int)FUNC0(pc, NULL, 0);

		if (!FUNC2(cur, "lc:", 3))
			linked_comm = val;
		else if (!FUNC2(cur, "tm:", 3))
			tag_mode = val;
		else if (!FUNC2(cur, "tc:", 3))
			tag_mode = val;
		else if (!FUNC2(cur, "mq:", 3))
			max_queue_depth = val;
		else if (!FUNC2(cur, "ls:", 3))
			link_statistics = val;
		else if (!FUNC2(cur, "et:", 3))
			ext_tran = val;
		else if (!FUNC2(cur, "rs:", 3))
			rev_scan = val;
		else if (!FUNC2(cur, "ip:", 3))
			isa_probe = val;
		else if (!FUNC2(cur, "ep:", 3))
			eisa_probe = val;
		else if (!FUNC2(cur, "pp:", 3))
			pci_probe = val;

		if ((cur = FUNC1(cur, ',')))
			++cur;
	}

	return;
}