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
struct iscsi_cls_session {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_cls_session*,char*) ; 
 struct iscsi_cls_session* FUNC1 (struct device*) ; 
 struct Scsi_Host* FUNC2 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct iscsi_cls_session *session = FUNC1(dev);
	struct Scsi_Host *shost;

	shost = FUNC2(session);
	FUNC4(shost);
	FUNC0(session, "Completing session release\n");
	FUNC3(session);
}