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
typedef  int u32 ;
struct nv44_mc_priv {int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nv44_mc_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv44_mc_priv*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *object)
{
	struct nv44_mc_priv *priv = (void *)object;
	u32 tmp = FUNC1(priv, 0x10020c);

	FUNC2(priv, 0x000200, 0xffffffff); /* everything enabled */

	FUNC2(priv, 0x001700, tmp);
	FUNC2(priv, 0x001704, 0);
	FUNC2(priv, 0x001708, 0);
	FUNC2(priv, 0x00170c, tmp);

	return FUNC0(&priv->base);
}