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
struct netiucv_priv {int /*<<< orphan*/  fsm; int /*<<< orphan*/  conn; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_FSM_LEN ; 
 int /*<<< orphan*/  DEV_STATE_STOPPED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  NR_DEV_EVENTS ; 
 int /*<<< orphan*/  NR_DEV_STATES ; 
 struct net_device* FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_event_names ; 
 int /*<<< orphan*/  dev_fsm ; 
 int /*<<< orphan*/  dev_state_names ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct netiucv_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*) ; 
 int /*<<< orphan*/  netiucv_setup_netdevice ; 
 int /*<<< orphan*/  setup ; 

__attribute__((used)) static struct net_device *FUNC9(char *username)
{
	struct netiucv_priv *privptr;
	struct net_device *dev;

	dev = FUNC1(sizeof(struct netiucv_priv), "iucv%d",
			   netiucv_setup_netdevice);
	if (!dev)
		return NULL;
	if (FUNC2(dev, dev->name) < 0)
		goto out_netdev;

	privptr = FUNC7(dev);
	privptr->fsm = FUNC5("netiucvdev", dev_state_names,
				dev_event_names, NR_DEV_STATES, NR_DEV_EVENTS,
				dev_fsm, DEV_FSM_LEN, GFP_KERNEL);
	if (!privptr->fsm)
		goto out_netdev;

	privptr->conn = FUNC8(dev, username);
	if (!privptr->conn) {
		FUNC0(setup, 2, "NULL from netiucv_new_connection\n");
		goto out_fsm;
	}
	FUNC4(privptr->fsm, DEV_STATE_STOPPED);
	return dev;

out_fsm:
	FUNC6(privptr->fsm);
out_netdev:
	FUNC3(dev);
	return NULL;
}