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
typedef  int u32 ;
struct mlx4_en_priv {int validate_loopback; TYPE_1__* dev; scalar_t__ loopback_ok; } ;
struct TYPE_2__ {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int MLX4_EN_LOOPBACK_RETRIES ; 
 int /*<<< orphan*/  MLX4_EN_LOOPBACK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 scalar_t__ FUNC1 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlx4_en_priv *priv)
{
	u32 loopback_ok = 0;
	int i;


        priv->loopback_ok = 0;
	priv->validate_loopback = 1;

	FUNC2(priv->dev, priv->dev->features);

	/* xmit */
	if (FUNC1(priv)) {
		FUNC0(priv, "Transmitting loopback packet failed\n");
		goto mlx4_en_test_loopback_exit;
	}

	/* polling for result */
	for (i = 0; i < MLX4_EN_LOOPBACK_RETRIES; ++i) {
		FUNC3(MLX4_EN_LOOPBACK_TIMEOUT);
		if (priv->loopback_ok) {
			loopback_ok = 1;
			break;
		}
	}
	if (!loopback_ok)
		FUNC0(priv, "Loopback packet didn't arrive\n");

mlx4_en_test_loopback_exit:

	priv->validate_loopback = 0;
	FUNC2(priv->dev, priv->dev->features);
	return (!loopback_ok);
}