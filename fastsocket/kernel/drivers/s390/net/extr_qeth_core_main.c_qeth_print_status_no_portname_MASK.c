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
struct TYPE_4__ {char* mcl_level; scalar_t__* portname; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__* gdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 

__attribute__((used)) static void FUNC3(struct qeth_card *card)
{
	if (card->info.portname[0])
		FUNC0(&card->gdev->dev, "Device is a%s "
		       "card%s%s%s\nwith link type %s "
		       "(no portname needed by interface).\n",
		       FUNC1(card),
		       (card->info.mcl_level[0]) ? " (level: " : "",
		       (card->info.mcl_level[0]) ? card->info.mcl_level : "",
		       (card->info.mcl_level[0]) ? ")" : "",
		       FUNC2(card));
	else
		FUNC0(&card->gdev->dev, "Device is a%s "
		       "card%s%s%s\nwith link type %s.\n",
		       FUNC1(card),
		       (card->info.mcl_level[0]) ? " (level: " : "",
		       (card->info.mcl_level[0]) ? card->info.mcl_level : "",
		       (card->info.mcl_level[0]) ? ")" : "",
		       FUNC2(card));
}