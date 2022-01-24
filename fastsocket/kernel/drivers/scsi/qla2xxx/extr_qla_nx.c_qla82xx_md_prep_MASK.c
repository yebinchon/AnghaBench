#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int md_template_size; int md_dump_size; int /*<<< orphan*/ * md_tmplt_hdr; int /*<<< orphan*/  md_tmplt_hdr_dma; TYPE_1__* pdev; } ;
struct TYPE_10__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,int,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 

void
FUNC6(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;
	int rval;

	/* Get Minidump template size */
	rval = FUNC5(vha);
	if (rval == QLA_SUCCESS) {
		FUNC2(ql_log_info, vha, 0xb04a,
		    "MiniDump Template size obtained (%d KB)\n",
		    ha->md_template_size / 1024);

		/* Get Minidump template */
		rval = FUNC4(vha);
		if (rval == QLA_SUCCESS) {
			FUNC1(ql_dbg_p3p, vha, 0xb04b,
			    "MiniDump Template obtained\n");

			/* Allocate memory for minidump */
			rval = FUNC3(vha);
			if (rval == QLA_SUCCESS)
				FUNC2(ql_log_info, vha, 0xb04c,
				    "MiniDump memory allocated (%d KB)\n",
				    ha->md_dump_size / 1024);
			else {
				FUNC2(ql_log_info, vha, 0xb04d,
				    "Free MiniDump template: %p, size: (%d KB)\n",
				    *ha->md_tmplt_hdr,
				    ha->md_template_size / 1024);
				FUNC0(&ha->pdev->dev,
				    ha->md_template_size,
				    ha->md_tmplt_hdr, ha->md_tmplt_hdr_dma);
				ha->md_tmplt_hdr = NULL;
			}

		}
	}
}