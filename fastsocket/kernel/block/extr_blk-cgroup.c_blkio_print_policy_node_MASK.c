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
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  iops; int /*<<< orphan*/  bps; int /*<<< orphan*/  weight; } ;
struct blkio_policy_node {int plid; TYPE_1__ val; int /*<<< orphan*/  dev; int /*<<< orphan*/  fileid; } ;

/* Variables and functions */
#define  BLKIO_POLICY_PROP 133 
#define  BLKIO_POLICY_THROTL 132 
 int /*<<< orphan*/  BLKIO_PROP_weight_device ; 
#define  BLKIO_THROTL_read_bps_device 131 
#define  BLKIO_THROTL_read_iops_device 130 
#define  BLKIO_THROTL_write_bps_device 129 
#define  BLKIO_THROTL_write_iops_device 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct seq_file *m, struct blkio_policy_node *pn)
{
	switch(pn->plid) {
		case BLKIO_POLICY_PROP:
			if (pn->fileid == BLKIO_PROP_weight_device)
				FUNC3(m, "%u:%u\t%u\n", FUNC1(pn->dev),
					FUNC2(pn->dev), pn->val.weight);
			break;
		case BLKIO_POLICY_THROTL:
			switch(pn->fileid) {
			case BLKIO_THROTL_read_bps_device:
			case BLKIO_THROTL_write_bps_device:
				FUNC3(m, "%u:%u\t%llu\n", FUNC1(pn->dev),
					FUNC2(pn->dev), pn->val.bps);
				break;
			case BLKIO_THROTL_read_iops_device:
			case BLKIO_THROTL_write_iops_device:
				FUNC3(m, "%u:%u\t%u\n", FUNC1(pn->dev),
					FUNC2(pn->dev), pn->val.iops);
				break;
			}
			break;
		default:
			FUNC0();
	}
}