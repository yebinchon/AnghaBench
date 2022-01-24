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
struct nv50_fifo_chan {int /*<<< orphan*/  base; int /*<<< orphan*/  ramht; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(struct nouveau_object *object)
{
	struct nv50_fifo_chan *chan = (void *)object;
	FUNC1(NULL, &chan->ramht);
	FUNC0(&chan->base);
}