#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* fan; int /*<<< orphan*/  base; } ;
struct nvd0_therm_priv {TYPE_3__ base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_8__ {int crystal; } ;
struct TYPE_5__ {scalar_t__ func; int line; } ;
struct TYPE_6__ {TYPE_1__ tach; } ;

/* Variables and functions */
 scalar_t__ DCB_GPIO_UNUSED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (struct nvd0_therm_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvd0_therm_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvd0_therm_priv*,int,int) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *object)
{
	struct nvd0_therm_priv *priv = (void *)object;
	int ret;

	ret = FUNC0(&priv->base.base);
	if (ret)
		return ret;

	/* enable fan tach, count revolutions per-second */
	FUNC2(priv, 0x00e720, 0x00000003, 0x00000002);
	if (priv->base.fan->tach.func != DCB_GPIO_UNUSED) {
		FUNC2(priv, 0x00d79c, 0x000000ff, priv->base.fan->tach.line);
		FUNC3(priv, 0x00e724, FUNC1(priv)->crystal * 1000);
		FUNC2(priv, 0x00e720, 0x00000001, 0x00000001);
	}
	FUNC2(priv, 0x00e720, 0x00000002, 0x00000000);

	return 0;
}