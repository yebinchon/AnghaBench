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
struct pnp_isa_config_struc {int revision; int no_csns; int isa_rd_data_port; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct pnp_isa_config_struc*) ; 
 int FUNC1 (char*,int,char*,int,int,int) ; 

__attribute__((used)) static int FUNC2(char *buf, char **start, off_t pos,
			       int count, int *eof, void *data)
{
	struct pnp_isa_config_struc pnps;

	if (FUNC0(&pnps))
		return -EIO;
	return FUNC1(buf, count,
			"structure_revision %d\n"
			"number_of_CSNs %d\n"
			"ISA_read_data_port 0x%x\n",
			pnps.revision, pnps.no_csns, pnps.isa_rd_data_port);
}