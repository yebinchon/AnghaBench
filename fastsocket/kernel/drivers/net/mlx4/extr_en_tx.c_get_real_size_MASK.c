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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int CTRL_SIZE ; 
 int DS_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct mlx4_en_priv*) ; 
 int FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct net_device *dev,
			 int *lso_header_size)
{
	struct mlx4_en_priv *priv = FUNC4(dev);
	int real_size;

	if (FUNC7(skb)) {
		*lso_header_size = FUNC9(skb) + FUNC10(skb);
		real_size = CTRL_SIZE + FUNC8(skb)->nr_frags * DS_SIZE +
			FUNC0(*lso_header_size + 4, DS_SIZE);
		if (FUNC11(*lso_header_size != FUNC6(skb))) {
			/* We add a segment for the skb linear buffer only if
			 * it contains data */
			if (*lso_header_size < FUNC6(skb))
				real_size += DS_SIZE;
			else {
				if (FUNC5(priv))
					FUNC1(priv, "Non-linear headers\n");
				return 0;
			}
		}
	} else {
		*lso_header_size = 0;
		if (!FUNC3(skb, NULL))
			real_size = CTRL_SIZE + (FUNC8(skb)->nr_frags + 1) * DS_SIZE;
		else
			real_size = FUNC2(skb);
	}

	return real_size;
}