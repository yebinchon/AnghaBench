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
struct scsi_host_template {char* proc_name; } ;

/* Variables and functions */
 unsigned int MAX_BOARDS ; 
 scalar_t__ MAX_EISA_ADDR ; 
 size_t MAX_INT_PARAM ; 
 scalar_t__ MAX_ISA_ADDR ; 
 scalar_t__ MIN_EISA_ADDR ; 
 scalar_t__ SKIP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  boot_options ; 
 int /*<<< orphan*/  eisa_probe ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__* io_port ; 
 int /*<<< orphan*/  isa_probe ; 
 unsigned int num_boards ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ pci_probe ; 
 scalar_t__ FUNC3 (scalar_t__,unsigned int,struct scsi_host_template*) ; 
 int setup_done ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct scsi_host_template *tpnt)
{
	unsigned int j = 0, k;

	tpnt->proc_name = "eata2x";

	if (FUNC4(boot_options))
		FUNC2(boot_options);

#if defined(MODULE)
	/* io_port could have been modified when loading as a module */
	if (io_port[0] != SKIP) {
		setup_done = 1;
		io_port[MAX_INT_PARAM] = 0;
	}
#endif

	for (k = MAX_INT_PARAM; io_port[k]; k++)
		if (io_port[k] == SKIP)
			continue;
		else if (io_port[k] <= MAX_ISA_ADDR) {
			if (!isa_probe)
				io_port[k] = SKIP;
		} else if (io_port[k] >= MIN_EISA_ADDR
			   && io_port[k] <= MAX_EISA_ADDR) {
			if (!eisa_probe)
				io_port[k] = SKIP;
		}

	if (pci_probe) {
		if (!setup_done)
			FUNC0();
		else
			FUNC1();
	}

	for (k = 0; io_port[k]; k++) {

		if (io_port[k] == SKIP)
			continue;

		if (j < MAX_BOARDS && FUNC3(io_port[k], j, tpnt))
			j++;
	}

	num_boards = j;
	return j;
}