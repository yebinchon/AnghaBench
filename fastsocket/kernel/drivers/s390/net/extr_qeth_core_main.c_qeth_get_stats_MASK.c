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
struct net_device_stats {int dummy; } ;
struct qeth_card {struct net_device_stats stats; } ;
struct net_device {struct qeth_card* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 

struct net_device_stats *FUNC1(struct net_device *dev)
{
	struct qeth_card *card;

	card = dev->ml_priv;

	FUNC0(TRACE, 5, "getstat");

	return &card->stats;
}