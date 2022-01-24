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
struct rndis_device {int dummy; } ;
struct netvsc_device {struct rndis_device* extension; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 struct netvsc_device* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rndis_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rndis_device*) ; 

void FUNC4(struct hv_device *dev)
{
	struct netvsc_device *net_dev = FUNC0(dev);
	struct rndis_device *rndis_dev = net_dev->extension;

	/* Halt and release the rndis device */
	FUNC3(rndis_dev);

	FUNC1(rndis_dev);
	net_dev->extension = NULL;

	FUNC2(dev);
}