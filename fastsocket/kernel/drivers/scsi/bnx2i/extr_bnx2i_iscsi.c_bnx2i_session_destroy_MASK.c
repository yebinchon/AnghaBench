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
struct iscsi_session {int dummy; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct bnx2i_hba {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2i_hba*,struct iscsi_session*) ; 
 struct bnx2i_hba* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cls_session*) ; 
 struct Scsi_Host* FUNC3 (struct iscsi_cls_session*) ; 

__attribute__((used)) static void FUNC4(struct iscsi_cls_session *cls_session)
{
	struct iscsi_session *session = cls_session->dd_data;
	struct Scsi_Host *shost = FUNC3(cls_session);
	struct bnx2i_hba *hba = FUNC1(shost);

	FUNC0(hba, session);
	FUNC2(cls_session);
}