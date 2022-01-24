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
struct nv50_display_flip {TYPE_2__* chan; TYPE_1__* disp; } ;
struct TYPE_4__ {int addr; scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  sync; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static bool
FUNC2(void *data)
{
	struct nv50_display_flip *flip = data;
	if (FUNC0(flip->disp->sync, flip->chan->addr / 4) ==
					      flip->chan->data)
		return true;
	FUNC1(1, 2);
	return false;
}