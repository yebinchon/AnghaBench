#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mac_addr; } ;
struct TYPE_4__ {TYPE_1__ lcs_lanstat_cmd; } ;
struct lcs_cmd {TYPE_2__ cmd; } ;
struct lcs_card {int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LCS_MAC_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static void
FUNC2(struct lcs_card *card, struct lcs_cmd *cmd)
{
	FUNC0(2, trace, "statcb");
	FUNC1(card->mac, cmd->cmd.lcs_lanstat_cmd.mac_addr, LCS_MAC_LENGTH);
}