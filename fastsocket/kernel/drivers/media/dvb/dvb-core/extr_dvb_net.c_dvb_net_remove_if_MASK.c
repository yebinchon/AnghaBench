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
struct net_device {int /*<<< orphan*/  name; } ;
struct dvb_net_priv {scalar_t__ in_use; } ;
struct dvb_net {struct net_device** device; scalar_t__* state; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct dvb_net_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct dvb_net *dvbnet, unsigned long num)
{
	struct net_device *net = dvbnet->device[num];
	struct dvb_net_priv *priv;

	if (!dvbnet->state[num])
		return -EINVAL;
	priv = FUNC3(net);
	if (priv->in_use)
		return -EBUSY;

	FUNC0(net);
	FUNC1();
	FUNC4("dvb_net: removed network interface %s\n", net->name);
	FUNC5(net);
	dvbnet->state[num]=0;
	dvbnet->device[num] = NULL;
	FUNC2(net);

	return 0;
}