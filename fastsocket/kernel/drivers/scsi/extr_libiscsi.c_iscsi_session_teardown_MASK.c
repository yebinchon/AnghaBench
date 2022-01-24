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
struct module {int dummy; } ;
struct iscsi_session {int /*<<< orphan*/  discovery_parent_type; int /*<<< orphan*/  portal_type; int /*<<< orphan*/  ifacename; int /*<<< orphan*/  boot_target; int /*<<< orphan*/  boot_nic; int /*<<< orphan*/  boot_root; int /*<<< orphan*/  initiatorname; int /*<<< orphan*/  targetalias; int /*<<< orphan*/  targetname; int /*<<< orphan*/  username_in; int /*<<< orphan*/  username; int /*<<< orphan*/  password_in; int /*<<< orphan*/  password; int /*<<< orphan*/  cmdpool; struct Scsi_Host* host; } ;
struct iscsi_cls_session {TYPE_1__* transport; struct iscsi_session* dd_data; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct module* owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct module*) ; 

void FUNC5(struct iscsi_cls_session *cls_session)
{
	struct iscsi_session *session = cls_session->dd_data;
	struct module *owner = cls_session->transport->owner;
	struct Scsi_Host *shost = session->host;

	FUNC2(&session->cmdpool);

	FUNC3(session->password);
	FUNC3(session->password_in);
	FUNC3(session->username);
	FUNC3(session->username_in);
	FUNC3(session->targetname);
	FUNC3(session->targetalias);
	FUNC3(session->initiatorname);
	FUNC3(session->boot_root);
	FUNC3(session->boot_nic);
	FUNC3(session->boot_target);
	FUNC3(session->ifacename);
	FUNC3(session->portal_type);
	FUNC3(session->discovery_parent_type);

	FUNC0(cls_session);
	FUNC1(shost);
	FUNC4(owner);
}