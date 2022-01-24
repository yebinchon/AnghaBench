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
struct Scsi_Host {int /*<<< orphan*/  shost_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void (*) (struct iscsi_cls_session*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iscsi_iter_session_fn ; 

void FUNC1(struct Scsi_Host *shost,
				 void (*fn)(struct iscsi_cls_session *))
{
	FUNC0(&shost->shost_gendev, fn,
			      iscsi_iter_session_fn);
}