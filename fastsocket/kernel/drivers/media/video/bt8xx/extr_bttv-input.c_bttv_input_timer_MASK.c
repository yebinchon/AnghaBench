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
struct bttv_ir {int /*<<< orphan*/  polling; int /*<<< orphan*/  timer; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct bttv {TYPE_1__ c; struct bttv_ir* remote; } ;

/* Variables and functions */
 scalar_t__ BTTV_BOARD_ENLTV_FM_2 ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct bttv *btv = (struct bttv*)data;
	struct bttv_ir *ir = btv->remote;

	if (btv->c.type == BTTV_BOARD_ENLTV_FM_2)
		FUNC0(btv);
	else
		FUNC1(btv);
	FUNC2(&ir->timer, jiffies + FUNC3(ir->polling));
}