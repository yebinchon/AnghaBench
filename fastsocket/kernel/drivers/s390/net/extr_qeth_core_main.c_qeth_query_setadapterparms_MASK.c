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
struct qeth_ipacmd_setadpparms {int dummy; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_SETADP_QUERY_COMMANDS_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 struct qeth_cmd_buffer* FUNC1 (struct qeth_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qeth_query_setadapterparms_cb ; 
 int FUNC2 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct qeth_card *card)
{
	int rc;
	struct qeth_cmd_buffer *iob;

	FUNC0(TRACE, 3, "queryadp");
	iob = FUNC1(card, IPA_SETADP_QUERY_COMMANDS_SUPPORTED,
				   sizeof(struct qeth_ipacmd_setadpparms));
	rc = FUNC2(card, iob, qeth_query_setadapterparms_cb, NULL);
	return rc;
}