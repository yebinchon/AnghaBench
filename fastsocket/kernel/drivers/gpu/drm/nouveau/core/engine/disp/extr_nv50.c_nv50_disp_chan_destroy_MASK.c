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
struct nv50_disp_chan {int chid; int /*<<< orphan*/  base; } ;
struct nv50_disp_base {int chan; } ;
struct TYPE_2__ {scalar_t__ parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct nv50_disp_chan*) ; 

void
FUNC2(struct nv50_disp_chan *chan)
{
	struct nv50_disp_base *base = (void *)FUNC1(chan)->parent;
	base->chan &= ~(1 << chan->chid);
	FUNC0(&chan->base);
}