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
struct net_device_stats {scalar_t__ rx_frame_errors; scalar_t__ rx_over_errors; scalar_t__ rx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
typedef  int /*<<< orphan*/  port_t ;
struct TYPE_2__ {scalar_t__ rx_frame_errors; scalar_t__ rx_overruns; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device_stats *FUNC2(struct net_device *dev)
{
	port_t *port = FUNC0(dev);

	dev->stats.rx_over_errors = FUNC1(port)->rx_overruns;
	dev->stats.rx_frame_errors = FUNC1(port)->rx_frame_errors;
	dev->stats.rx_errors = dev->stats.rx_over_errors +
		dev->stats.rx_frame_errors;
	return &dev->stats;
}