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
struct nvc0_copy_priv {int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 scalar_t__ NVDEV_ENGINE_COPY0 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvc0_copy_priv*,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *object)
{
	struct nvc0_copy_priv *priv = (void *)object;
	int ret;

	ret = FUNC0(&priv->base);
	if (ret)
		return ret;

	FUNC2(priv, 0x084, FUNC1(object) - NVDEV_ENGINE_COPY0);
	return 0;
}