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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct emac_priv {void* mac_hash2; void* mac_hash1; int /*<<< orphan*/ * multicast_hash_cnt; TYPE_1__* ndev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
#define  EMAC_ALL_MULTI_CLR 131 
 void* EMAC_ALL_MULTI_REG_VALUE ; 
#define  EMAC_ALL_MULTI_SET 130 
 int /*<<< orphan*/  EMAC_MACHASH1 ; 
 int /*<<< orphan*/  EMAC_MACHASH2 ; 
#define  EMAC_MULTICAST_ADD 129 
#define  EMAC_MULTICAST_DEL 128 
 int EMAC_NUM_MULTICAST_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (struct emac_priv*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct emac_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct emac_priv*) ; 

__attribute__((used)) static void FUNC6(struct emac_priv *priv, u32 action, u8 *mac_addr)
{
	struct device *emac_dev = &priv->ndev->dev;
	int update = -1;

	switch (action) {
	case EMAC_MULTICAST_ADD:
		update = FUNC2(priv, mac_addr);
		break;
	case EMAC_MULTICAST_DEL:
		update = FUNC3(priv, mac_addr);
		break;
	case EMAC_ALL_MULTI_SET:
		update = 1;
		priv->mac_hash1 = EMAC_ALL_MULTI_REG_VALUE;
		priv->mac_hash2 = EMAC_ALL_MULTI_REG_VALUE;
		break;
	case EMAC_ALL_MULTI_CLR:
		update = 1;
		priv->mac_hash1 = 0;
		priv->mac_hash2 = 0;
		FUNC4(&(priv->multicast_hash_cnt[0]), 0,
		sizeof(priv->multicast_hash_cnt[0]) *
		       EMAC_NUM_MULTICAST_BITS);
		break;
	default:
		if (FUNC5(priv))
			FUNC0(emac_dev, "DaVinci EMAC: add_mcast"\
				": bad operation %d", action);
		break;
	}

	/* write to the hardware only if the register status chances */
	if (update > 0) {
		FUNC1(EMAC_MACHASH1, priv->mac_hash1);
		FUNC1(EMAC_MACHASH2, priv->mac_hash2);
	}
}