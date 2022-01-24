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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct dscc4_dev_priv {scalar_t__ base_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dscc4_dev_priv*) ; 
 scalar_t__ STAR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC2(struct dscc4_dev_priv *dpriv, struct net_device *dev)
{
	/* Cf errata DS5 p.4 */
	FUNC1(dpriv->base_addr + FUNC0(dpriv) + STAR);
	return FUNC1(dpriv->base_addr + FUNC0(dpriv) + STAR);
}