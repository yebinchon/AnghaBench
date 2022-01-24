#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ chan; } ;
typedef  TYPE_2__ pc300dev_t ;
struct TYPE_7__ {int proto; } ;
struct TYPE_9__ {TYPE_1__ conf; scalar_t__ card; } ;
typedef  TYPE_3__ pc300ch_t ;
typedef  int /*<<< orphan*/  pc300_t ;
struct TYPE_10__ {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int PC300_PROTO_MLPPP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_4__* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	pc300dev_t *d = (pc300dev_t *) FUNC4(dev)->priv;
	pc300ch_t *chan = (pc300ch_t *) d->chan;
	pc300_t *card = (pc300_t *) chan->card;
	unsigned long flags;

#ifdef	PC300_DEBUG_OTHER
	printk("pc300: cpc_close");
#endif

	FUNC6(dev);

	FUNC0(card, flags);
	FUNC2(d);
	FUNC1(card, flags);

	FUNC5(dev);

#ifdef CONFIG_PC300_MLPPP
	if (chan->conf.proto == PC300_PROTO_MLPPP) {
		cpc_tty_unregister_service(d);
		chan->conf.proto = 0xffff;
	}
#endif

	return 0;
}