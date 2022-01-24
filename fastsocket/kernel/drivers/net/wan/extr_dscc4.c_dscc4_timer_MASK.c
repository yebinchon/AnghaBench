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
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct dscc4_dev_priv {TYPE_1__ timer; } ;

/* Variables and functions */
 scalar_t__ TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct dscc4_dev_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ jiffies ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct net_device *dev = (struct net_device *)data;
	struct dscc4_dev_priv *dpriv = FUNC1(dev);
//	struct dscc4_pci_priv *ppriv;

	goto done;
done:
        dpriv->timer.expires = jiffies + TX_TIMEOUT;
        FUNC0(&dpriv->timer);
}