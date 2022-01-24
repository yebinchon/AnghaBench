#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  interface_id; } ;
union ib_gid {TYPE_2__ global; } ;
struct TYPE_14__ {TYPE_9__* demux; int /*<<< orphan*/ * sqps; int /*<<< orphan*/  going_down_lock; scalar_t__ is_going_down; } ;
struct TYPE_16__ {int /*<<< orphan*/  node_guid; } ;
struct mlx4_ib_dev {int num_ports; TYPE_3__ sriov; TYPE_4__* dev; TYPE_8__ ib_dev; } ;
struct TYPE_17__ {int /*<<< orphan*/ * guid_cache; } ;
struct TYPE_12__ {int sqp_demux; } ;
struct TYPE_15__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int FUNC0 (TYPE_8__*,int,int /*<<< orphan*/ ,union ib_gid*,int) ; 
 int FUNC1 (struct mlx4_ib_dev*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_ib_dev*,int,int) ; 
 int FUNC3 (struct mlx4_ib_dev*,TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_ib_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_ib_dev*) ; 
 int FUNC7 (struct mlx4_ib_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_ib_dev*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct mlx4_ib_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 scalar_t__ FUNC15 (TYPE_4__*) ; 
 int FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(struct mlx4_ib_dev *dev)
{
	int i = 0;
	int err;

	if (!FUNC14(dev->dev))
		return 0;

	dev->sriov.is_going_down = 0;
	FUNC18(&dev->sriov.going_down_lock);
	FUNC5(dev);

	FUNC13(&dev->ib_dev, "multi-function enabled\n");

	if (FUNC15(dev->dev)) {
		FUNC13(&dev->ib_dev, "operating in qp1 tunnel mode\n");
		return 0;
	}

	for (i = 0; i < dev->dev->caps.sqp_demux; i++) {
		if (i == FUNC16(dev->dev))
			FUNC17(dev->dev, i, dev->ib_dev.node_guid);
		else
			FUNC17(dev->dev, i, FUNC10());
	}

	err = FUNC11(dev);
	if (err) {
		FUNC13(&dev->ib_dev, "Failed init alias guid process.\n");
		goto paravirt_err;
	}
	err = FUNC7(dev);
	if (err) {
		FUNC13(&dev->ib_dev, "Failed to register sysfs\n");
		goto sysfs_err;
	}

	FUNC13(&dev->ib_dev, "initializing demux service for %d qp1 clients\n",
		     dev->dev->caps.sqp_demux);
	for (i = 0; i < dev->num_ports; i++) {
		union ib_gid gid;
		err = FUNC0(&dev->ib_dev, i + 1, 0, &gid, 1);
		if (err)
			goto demux_err;
		dev->sriov.demux[i].guid_cache[0] = gid.global.interface_id;
		err = FUNC1(dev, FUNC16(dev->dev), i + 1,
				      &dev->sriov.sqps[i]);
		if (err)
			goto demux_err;
		err = FUNC3(dev, &dev->sriov.demux[i], i + 1);
		if (err)
			goto free_pv;
	}
	FUNC12(dev, 1);
	return 0;

free_pv:
	FUNC2(dev, FUNC16(dev->dev), i + 1);
demux_err:
	while (--i >= 0) {
		FUNC2(dev, FUNC16(dev->dev), i + 1);
		FUNC9(&dev->sriov.demux[i]);
	}
	FUNC8(dev);

sysfs_err:
	FUNC6(dev);

paravirt_err:
	FUNC4(dev, -1);

	return err;
}