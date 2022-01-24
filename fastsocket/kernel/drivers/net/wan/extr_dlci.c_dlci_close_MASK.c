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
struct frad_local {int (* deactivate ) (struct net_device*,struct net_device*) ;} ;
struct dlci_local {struct net_device* slave; } ;

/* Variables and functions */
 void* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct dlci_local	*dlp;
	struct frad_local	*flp;
	int			err;

	FUNC1(dev);

	dlp = FUNC0(dev);

	flp = FUNC0(dlp->slave);
	err = (*flp->deactivate)(dlp->slave, dev);

	return 0;
}