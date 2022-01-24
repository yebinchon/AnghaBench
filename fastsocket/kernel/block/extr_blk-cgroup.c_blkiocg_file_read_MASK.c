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
struct cgroup {int dummy; } ;
struct cftype {int /*<<< orphan*/  private; } ;
struct blkio_cgroup {int dummy; } ;
typedef  enum blkio_policy_id { ____Placeholder_blkio_policy_id } blkio_policy_id ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  BLKIO_POLICY_PROP 134 
#define  BLKIO_POLICY_THROTL 133 
#define  BLKIO_PROP_weight_device 132 
#define  BLKIO_THROTL_read_bps_device 131 
#define  BLKIO_THROTL_read_iops_device 130 
#define  BLKIO_THROTL_write_bps_device 129 
#define  BLKIO_THROTL_write_iops_device 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct cftype*,struct blkio_cgroup*,struct seq_file*) ; 
 struct blkio_cgroup* FUNC4 (struct cgroup*) ; 

__attribute__((used)) static int FUNC5(struct cgroup *cgrp, struct cftype *cft,
				struct seq_file *m)
{
	struct blkio_cgroup *blkcg;
	enum blkio_policy_id plid = FUNC1(cft->private);
	int name = FUNC0(cft->private);

	blkcg = FUNC4(cgrp);

	switch(plid) {
	case BLKIO_POLICY_PROP:
		switch(name) {
		case BLKIO_PROP_weight_device:
			FUNC3(cft, blkcg, m);
			return 0;
		default:
			FUNC2();
		}
		break;
	case BLKIO_POLICY_THROTL:
		switch(name){
		case BLKIO_THROTL_read_bps_device:
		case BLKIO_THROTL_write_bps_device:
		case BLKIO_THROTL_read_iops_device:
		case BLKIO_THROTL_write_iops_device:
			FUNC3(cft, blkcg, m);
			return 0;
		default:
			FUNC2();
		}
		break;
	default:
		FUNC2();
	}

	return 0;
}