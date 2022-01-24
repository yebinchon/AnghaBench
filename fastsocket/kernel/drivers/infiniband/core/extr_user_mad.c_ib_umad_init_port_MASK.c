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
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  kobj; void* owner; } ;
struct ib_umad_port {int dev_num; int port_num; TYPE_1__ cdev; TYPE_1__ sm_cdev; void* sm_dev; void* dev; int /*<<< orphan*/  file_list; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  sm_sem; struct ib_device* ib_dev; } ;
struct ib_device {int /*<<< orphan*/  dma_device; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int IB_UMAD_MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (void*) ; 
 void* THIS_MODULE ; 
 scalar_t__ base_dev ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_ibdev ; 
 int /*<<< orphan*/  dev_attr_port ; 
 int /*<<< orphan*/  dev_map ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_umad_port*,char*,int) ; 
 scalar_t__ FUNC7 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ overflow_maj ; 
 int /*<<< orphan*/  overflow_map ; 
 int /*<<< orphan*/  port_lock ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  umad_class ; 
 int /*<<< orphan*/  umad_fops ; 
 int /*<<< orphan*/  umad_sm_fops ; 

__attribute__((used)) static int FUNC17(struct ib_device *device, int port_num,
			     struct ib_umad_port *port)
{
	int devnum;
	dev_t base;

	FUNC15(&port_lock);
	devnum = FUNC9(dev_map, IB_UMAD_MAX_PORTS);
	if (devnum >= IB_UMAD_MAX_PORTS) {
		FUNC16(&port_lock);
		devnum = FUNC10();
		if (devnum < 0)
			return -1;

		FUNC15(&port_lock);
		port->dev_num = devnum + IB_UMAD_MAX_PORTS;
		base = devnum + overflow_maj;
		FUNC14(devnum, overflow_map);
	} else {
		port->dev_num = devnum;
		base = devnum + base_dev;
		FUNC14(devnum, dev_map);
	}
	FUNC16(&port_lock);

	port->ib_dev   = device;
	port->port_num = port_num;
	FUNC13(&port->sm_sem, 1);
	FUNC12(&port->file_mutex);
	FUNC0(&port->file_list);

	FUNC4(&port->cdev, &umad_fops);
	port->cdev.owner = THIS_MODULE;
	FUNC11(&port->cdev.kobj, "umad%d", port->dev_num);
	if (FUNC2(&port->cdev, base, 1))
		goto err_cdev;

	port->dev = FUNC6(umad_class, device->dma_device,
				  port->cdev.dev, port,
				  "umad%d", port->dev_num);
	if (FUNC1(port->dev))
		goto err_cdev;

	if (FUNC7(port->dev, &dev_attr_ibdev))
		goto err_dev;
	if (FUNC7(port->dev, &dev_attr_port))
		goto err_dev;

	base += IB_UMAD_MAX_PORTS;
	FUNC4(&port->sm_cdev, &umad_sm_fops);
	port->sm_cdev.owner = THIS_MODULE;
	FUNC11(&port->sm_cdev.kobj, "issm%d", port->dev_num);
	if (FUNC2(&port->sm_cdev, base, 1))
		goto err_sm_cdev;

	port->sm_dev = FUNC6(umad_class, device->dma_device,
				     port->sm_cdev.dev, port,
				     "issm%d", port->dev_num);
	if (FUNC1(port->sm_dev))
		goto err_sm_cdev;

	if (FUNC7(port->sm_dev, &dev_attr_ibdev))
		goto err_sm_dev;
	if (FUNC7(port->sm_dev, &dev_attr_port))
		goto err_sm_dev;

	return 0;

err_sm_dev:
	FUNC8(umad_class, port->sm_cdev.dev);

err_sm_cdev:
	FUNC3(&port->sm_cdev);

err_dev:
	FUNC8(umad_class, port->cdev.dev);

err_cdev:
	FUNC3(&port->cdev);
	if (port->dev_num < IB_UMAD_MAX_PORTS)
		FUNC5(devnum, dev_map);
	else
		FUNC5(devnum, overflow_map);

	return -1;
}