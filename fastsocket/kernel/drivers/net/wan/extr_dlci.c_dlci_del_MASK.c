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
struct net_device {int dummy; } ;
struct frad_local {int (* deassoc ) (struct net_device*,struct net_device*) ;} ;
struct dlci_local {int /*<<< orphan*/  list; struct net_device* slave; } ;
struct dlci_add {int /*<<< orphan*/  devname; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct dlci_add *dlci)
{
	struct dlci_local	*dlp;
	struct frad_local	*flp;
	struct net_device	*master, *slave;
	int			err;

	/* validate slave device */
	master = FUNC0(&init_net, dlci->devname);
	if (!master)
		return(-ENODEV);

	if (FUNC4(master)) {
		return(-EBUSY);
	}

	dlp = FUNC3(master);
	slave = dlp->slave;
	flp = FUNC3(slave);

	FUNC5();
	err = (*flp->deassoc)(slave, master);
	if (!err) {
		FUNC2(&dlp->list);

		FUNC8(master);

		FUNC1(slave);
	}
	FUNC6();

	return(err);
}