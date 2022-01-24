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
struct fw_node {int dummy; } ;
struct fw_card {scalar_t__ bm_retries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_NODE_DESTROYED ; 
 int /*<<< orphan*/  FUNC0 (struct fw_card*,struct fw_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_node*) ; 

__attribute__((used)) static void FUNC2(struct fw_card *card,
			     struct fw_node *node, struct fw_node *parent)
{
	FUNC0(card, node, FW_NODE_DESTROYED);
	FUNC1(node);

	/* Topology has changed - reset bus manager retry counter */
	card->bm_retries = 0;
}