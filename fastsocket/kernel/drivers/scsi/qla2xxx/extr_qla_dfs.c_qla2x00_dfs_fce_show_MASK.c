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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct seq_file {TYPE_1__* private; } ;
struct qla_hw_data {int /*<<< orphan*/  fce_mutex; int /*<<< orphan*/  fce_bufs; scalar_t__ fce_dma; scalar_t__ fce; int /*<<< orphan*/ * fce_mb; scalar_t__ fce_wr; } ;
struct TYPE_2__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int
FUNC4(struct seq_file *s, void *unused)
{
	scsi_qla_host_t *vha = s->private;
	uint32_t cnt;
	uint32_t *fce;
	uint64_t fce_start;
	struct qla_hw_data *ha = vha->hw;

	FUNC1(&ha->fce_mutex);

	FUNC3(s, "FCE Trace Buffer\n");
	FUNC3(s, "In Pointer = %llx\n\n", (unsigned long long)ha->fce_wr);
	FUNC3(s, "Base = %llx\n\n", (unsigned long long) ha->fce_dma);
	FUNC3(s, "FCE Enable Registers\n");
	FUNC3(s, "%08x %08x %08x %08x %08x %08x\n",
	    ha->fce_mb[0], ha->fce_mb[2], ha->fce_mb[3], ha->fce_mb[4],
	    ha->fce_mb[5], ha->fce_mb[6]);

	fce = (uint32_t *) ha->fce;
	fce_start = (unsigned long long) ha->fce_dma;
	for (cnt = 0; cnt < FUNC0(ha->fce_bufs) / 4; cnt++) {
		if (cnt % 8 == 0)
			FUNC3(s, "\n%llx: ",
			    (unsigned long long)((cnt * 4) + fce_start));
		else
			FUNC3(s, " ");
		FUNC3(s, "%08x", *fce++);
	}

	FUNC3(s, "\nEnd\n");

	FUNC2(&ha->fce_mutex);

	return 0;
}