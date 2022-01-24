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
struct iscsi_cls_session {int /*<<< orphan*/  dd_data; } ;

/* Variables and functions */
 int CXGBI_DBG_ISCSI ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct iscsi_cls_session*) ; 

void FUNC3(struct iscsi_cls_session *cls_session)
{
	FUNC2(1 << CXGBI_DBG_ISCSI,
		"cls sess 0x%p.\n", cls_session);

	FUNC1(cls_session->dd_data);
	FUNC0(cls_session);
}