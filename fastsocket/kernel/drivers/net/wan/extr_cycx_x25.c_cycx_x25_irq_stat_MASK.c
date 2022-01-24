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
struct cycx_x25_cmd {int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  stats; } ;
struct TYPE_3__ {TYPE_2__ x; } ;
struct cycx_device {int /*<<< orphan*/  wait_stats; TYPE_1__ u; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cycx_device *card,
			      struct cycx_x25_cmd *cmd)
{
	FUNC0(&card->hw, cmd->buf, &card->u.x.stats,
		  sizeof(card->u.x.stats));
	FUNC2("cycx_x25_irq_stat", (unsigned char*)&card->u.x.stats,
		 sizeof(card->u.x.stats));
	FUNC1(&card->u.x.stats);
	FUNC3(&card->wait_stats);
}