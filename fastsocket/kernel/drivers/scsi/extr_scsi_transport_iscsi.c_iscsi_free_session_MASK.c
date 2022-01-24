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
struct iscsi_cls_session {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_cls_session*,char*) ; 
 int /*<<< orphan*/  ISCSI_KEVENT_DESTROY_SESSION ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cls_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iscsi_cls_session *session)
{
	FUNC0(session, "Freeing session\n");
	FUNC1(session, ISCSI_KEVENT_DESTROY_SESSION);
	FUNC2(&session->dev);
}