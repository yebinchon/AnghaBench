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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int /*<<< orphan*/  maxrate; } ;
struct ieee_maxrate {scalar_t__* tc_maxrate; } ;

/* Variables and functions */
 int IEEE_8021QAZ_MAX_TCS ; 
 scalar_t__ MLX4_RATELIMIT_UNITS_IN_KB ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct mlx4_en_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
		struct ieee_maxrate *maxrate)
{
	struct mlx4_en_priv *priv = FUNC3(dev);
	u16 tmp[IEEE_8021QAZ_MAX_TCS];
	int i, err;

	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
		/* Convert from Kbps into HW units, rounding result up.
		 * Setting to 0, means unlimited BW.
		 */

		tmp[i] = FUNC0(maxrate->tc_maxrate[i] +
				 MLX4_RATELIMIT_UNITS_IN_KB - 1,
				 MLX4_RATELIMIT_UNITS_IN_KB);
	}

	err = FUNC2(priv, NULL, tmp);
	if (err)
		return err;

	FUNC1(priv->maxrate, tmp, sizeof(priv->maxrate));

	return 0;
}