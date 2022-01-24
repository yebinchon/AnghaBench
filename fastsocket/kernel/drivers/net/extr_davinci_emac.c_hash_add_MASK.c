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
typedef  size_t u32 ;
struct emac_priv {scalar_t__* multicast_hash_cnt; size_t mac_hash1; size_t mac_hash2; TYPE_1__* ndev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t EMAC_NUM_MULTICAST_BITS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,size_t,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct emac_priv*) ; 

__attribute__((used)) static int FUNC4(struct emac_priv *priv, u8 *mac_addr)
{
	struct device *emac_dev = &priv->ndev->dev;
	u32 rc = 0;
	u32 hash_bit;
	u32 hash_value = FUNC2(mac_addr);

	if (hash_value >= EMAC_NUM_MULTICAST_BITS) {
		if (FUNC3(priv)) {
			FUNC1(emac_dev, "DaVinci EMAC: hash_add(): Invalid "\
				"Hash %08x, should not be greater than %08x",
				hash_value, (EMAC_NUM_MULTICAST_BITS - 1));
		}
		return -1;
	}

	/* set the hash bit only if not previously set */
	if (priv->multicast_hash_cnt[hash_value] == 0) {
		rc = 1; /* hash value changed */
		if (hash_value < 32) {
			hash_bit = FUNC0(hash_value);
			priv->mac_hash1 |= hash_bit;
		} else {
			hash_bit = FUNC0((hash_value - 32));
			priv->mac_hash2 |= hash_bit;
		}
	}

	/* incr counter for num of mcast addr's mapped to "this" hash bit */
	++priv->multicast_hash_cnt[hash_value];

	return rc;
}