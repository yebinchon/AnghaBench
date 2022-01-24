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
struct nlattr {int dummy; } ;
struct net_device {unsigned int num_tx_queues; unsigned int real_num_tx_queues; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t IFLA_LINK ; 
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 

__attribute__((used)) static int FUNC2(struct net *net,
				 struct nlattr *tb[],
				 unsigned int *num_tx_queues,
				 unsigned int *real_num_tx_queues)
{
	struct net_device *real_dev;

	if (!tb[IFLA_LINK])
		return -EINVAL;

	real_dev = FUNC0(net, FUNC1(tb[IFLA_LINK]));
	if (!real_dev)
		return -ENODEV;

	*num_tx_queues      = real_dev->num_tx_queues;
	*real_num_tx_queues = real_dev->real_num_tx_queues;
	return 0;
}