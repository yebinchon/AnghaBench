#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct c2port_ops {int blocks_num; int block_size; int /*<<< orphan*/  (* access ) (struct c2port_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  c2d_set; int /*<<< orphan*/  c2d_get; int /*<<< orphan*/  c2ck_set; int /*<<< orphan*/  c2d_dir; } ;
struct c2port_device {int id; int /*<<< orphan*/  dev; scalar_t__ flash_access; scalar_t__ access; int /*<<< orphan*/  mutex; struct c2port_ops* ops; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  C2PORT_NAME_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct c2port_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__ c2port_bin_attrs ; 
 int /*<<< orphan*/  c2port_class ; 
 int /*<<< orphan*/  c2port_idr ; 
 int /*<<< orphan*/  c2port_idr_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct c2port_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct c2port_device*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flags ; 
 int FUNC6 (int /*<<< orphan*/ *,struct c2port_device*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct c2port_device*) ; 
 struct c2port_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct c2port_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct c2port_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

struct c2port_device *FUNC18(char *name,
					struct c2port_ops *ops, void *devdata)
{
	struct c2port_device *c2dev;
	int id, ret;

	if (FUNC17(!ops) || FUNC17(!ops->access) || \
		FUNC17(!ops->c2d_dir) || FUNC17(!ops->c2ck_set) || \
		FUNC17(!ops->c2d_get) || FUNC17(!ops->c2d_set))
		return FUNC0(-EINVAL);

	c2dev = FUNC10(sizeof(struct c2port_device), GFP_KERNEL);
	FUNC11(c2dev, flags);
	if (FUNC17(!c2dev))
		return FUNC0(-ENOMEM);

	ret = FUNC7(&c2port_idr, GFP_KERNEL);
	if (!ret) {
		ret = -ENOMEM;
		goto error_idr_get_new;
	}

	FUNC13(&c2port_idr_lock);
	ret = FUNC6(&c2port_idr, c2dev, &id);
	FUNC14(&c2port_idr_lock);

	if (ret < 0)
		goto error_idr_get_new;
	c2dev->id = id;

	c2dev->dev = FUNC3(c2port_class, NULL, 0, c2dev,
					"c2port%d", id);
	if (FUNC17(!c2dev->dev)) {
		ret = -ENOMEM;
		goto error_device_create;
	}
	FUNC2(c2dev->dev, c2dev);

	FUNC15(c2dev->name, name, C2PORT_NAME_LEN);
	c2dev->ops = ops;
	FUNC12(&c2dev->mutex);

	/* Create binary file */
	c2port_bin_attrs.size = ops->blocks_num * ops->block_size;
	ret = FUNC4(c2dev->dev, &c2port_bin_attrs);
	if (FUNC17(ret))
		goto error_device_create_bin_file;

	/* By default C2 port access is off */
	c2dev->access = c2dev->flash_access = 0;
	ops->access(c2dev, 0);

	FUNC1(c2dev->dev, "C2 port %s added\n", name);
	FUNC1(c2dev->dev, "%s flash has %d blocks x %d bytes "
				"(%d bytes total)\n",
				name, ops->blocks_num, ops->block_size,
				ops->blocks_num * ops->block_size);

	return c2dev;

error_device_create_bin_file:
	FUNC5(c2port_class, 0);

error_device_create:
	FUNC13(&c2port_idr_lock);
	FUNC8(&c2port_idr, id);
	FUNC14(&c2port_idr_lock);

error_idr_get_new:
	FUNC9(c2dev);

	return FUNC0(ret);
}