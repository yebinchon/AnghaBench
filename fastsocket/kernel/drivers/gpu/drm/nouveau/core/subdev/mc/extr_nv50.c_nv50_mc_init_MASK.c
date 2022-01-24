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
struct nv50_mc_priv {int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_mc_priv*,int,int) ; 

int
FUNC2(struct nouveau_object *object)
{
	struct nv50_mc_priv *priv = (void *)object;
	FUNC1(priv, 0x000200, 0xffffffff); /* everything on */
	return FUNC0(&priv->base);
}