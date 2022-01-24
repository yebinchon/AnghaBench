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
struct scsi_device {int tagged_supported; struct ddb_entry* hostdata; int /*<<< orphan*/  sdev_target; } ;
struct iscsi_session {struct ddb_entry* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct ddb_entry {int dummy; } ;

/* Variables and functions */
 int QL4_DEF_QDEPTH ; 
 int ql4xmaxqdepth ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*,int) ; 
 struct iscsi_cls_session* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct scsi_device *sdev)
{
	struct iscsi_cls_session *cls_sess;
	struct iscsi_session *sess;
	struct ddb_entry *ddb;
	int queue_depth = QL4_DEF_QDEPTH;

	cls_sess = FUNC1(sdev->sdev_target);
	sess = cls_sess->dd_data;
	ddb = sess->dd_data;

	sdev->hostdata = ddb;
	sdev->tagged_supported = 1;

	if (ql4xmaxqdepth != 0 && ql4xmaxqdepth <= 0xffffU)
		queue_depth = ql4xmaxqdepth;

	FUNC0(sdev, queue_depth);
	return 0;
}