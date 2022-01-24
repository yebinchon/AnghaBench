#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; struct net_device* ndev; } ;
typedef  TYPE_1__ board_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM9000_NCR ; 
 unsigned int NCR_FDX ; 
 unsigned int NSR_SPEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 unsigned int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(board_info_t *db,
				unsigned carrier, unsigned nsr)
{
	struct net_device *ndev = db->ndev;
	unsigned ncr = FUNC1(db, DM9000_NCR);

	if (carrier)
		FUNC0(db->dev, "%s: link up, %dMbps, %s-duplex, no LPA\n",
			 ndev->name, (nsr & NSR_SPEED) ? 10 : 100,
			 (ncr & NCR_FDX) ? "full" : "half");
	else
		FUNC0(db->dev, "%s: link down\n", ndev->name);
}