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
struct lcs_reply {int /*<<< orphan*/  wait_q; scalar_t__ rc; scalar_t__ received; int /*<<< orphan*/  sequence_no; int /*<<< orphan*/  refcnt; } ;
struct lcs_cmd {int /*<<< orphan*/  sequence_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct lcs_reply* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static struct lcs_reply *
FUNC4(struct lcs_cmd *cmd)
{
	struct lcs_reply *reply;

	FUNC0(4, trace, "getreply");

	reply = FUNC3(sizeof(struct lcs_reply), GFP_ATOMIC);
	if (!reply)
		return NULL;
	FUNC1(&reply->refcnt,1);
	reply->sequence_no = cmd->sequence_no;
	reply->received = 0;
	reply->rc = 0;
	FUNC2(&reply->wait_q);

	return reply;
}