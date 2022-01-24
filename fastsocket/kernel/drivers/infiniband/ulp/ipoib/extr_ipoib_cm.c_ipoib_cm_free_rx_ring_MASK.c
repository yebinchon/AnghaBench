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
struct ipoib_dev_priv {int dummy; } ;
struct ipoib_cm_rx_buf {scalar_t__ skb; int /*<<< orphan*/  mapping; } ;

/* Variables and functions */
 scalar_t__ IPOIB_CM_RX_SG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,scalar_t__,int /*<<< orphan*/ ) ; 
 int ipoib_recvq_size ; 
 struct ipoib_dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_cm_rx_buf*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
				  struct ipoib_cm_rx_buf *rx_ring)
{
	struct ipoib_dev_priv *priv = FUNC2(dev);
	int i;

	for (i = 0; i < ipoib_recvq_size; ++i)
		if (rx_ring[i].skb) {
			FUNC1(priv, IPOIB_CM_RX_SG - 1,
					      rx_ring[i].mapping);
			FUNC0(rx_ring[i].skb);
		}

	FUNC3(rx_ring);
}