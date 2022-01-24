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
struct fe_priv {int register_size; } ;

/* Variables and functions */
 struct fe_priv* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev)
{
	struct fe_priv *np = FUNC0(dev);
	return np->register_size;
}