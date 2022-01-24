#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; } ;
struct ehea_port {scalar_t__ state; int num_def_qps; TYPE_1__* port_res; int /*<<< orphan*/  adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 scalar_t__ EHEA_PORT_UP ; 
 int EIO ; 
 int /*<<< orphan*/  H_REG_BCMC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ehea_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ehea_port*) ; 
 int FUNC3 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct ehea_port*,int) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct ehea_port* FUNC12 (struct net_device*) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	int ret, i;
	struct ehea_port *port = FUNC12(dev);

	if (port->state == EHEA_PORT_UP)
		return 0;

	ret = FUNC8(port, port->num_def_qps);
	if (ret) {
		FUNC4("port_res_failed");
		goto out;
	}

	/* Set default QP for this port */
	ret = FUNC3(port);
	if (ret) {
		FUNC4("ehea_configure_port failed. ret:%d", ret);
		goto out_clean_pr;
	}

	ret = FUNC9(dev);
	if (ret) {
		FUNC4("reg_interrupts failed. ret:%d", ret);
		goto out_clean_pr;
	}

	for (i = 0; i < port->num_def_qps; i++) {
		ret = FUNC0(port->adapter, port->port_res[i].qp);
		if (ret) {
			FUNC4("activate_qp failed");
			goto out_free_irqs;
		}
	}

	for (i = 0; i < port->num_def_qps; i++) {
		ret = FUNC5(&port->port_res[i]);
		if (ret) {
			FUNC4("out_free_irqs");
			goto out_free_irqs;
		}
	}

	ret = FUNC1(port, H_REG_BCMC);
	if (ret) {
		ret = -EIO;
		goto out_free_irqs;
	}

	port->state = EHEA_PORT_UP;

	ret = 0;
	goto out;

out_free_irqs:
	FUNC6(dev);

out_clean_pr:
	FUNC2(port);
out:
	if (ret)
		FUNC7("Failed starting %s. ret=%i", dev->name, ret);

	FUNC10();
	FUNC11();

	return ret;
}