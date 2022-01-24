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
struct cpmac_priv {struct cpmac_desc* rx_head; } ;
struct cpmac_desc {struct cpmac_desc* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct cpmac_desc*) ; 
 struct cpmac_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct cpmac_priv *priv = FUNC1(dev);
	struct cpmac_desc *dump = priv->rx_head;
	do {
		FUNC0(dev, dump);
		dump = dump->next;
	} while (dump != priv->rx_head);
}