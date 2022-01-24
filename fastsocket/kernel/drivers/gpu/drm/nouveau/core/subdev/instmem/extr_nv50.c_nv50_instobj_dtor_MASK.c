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
struct nv50_instobj_priv {int /*<<< orphan*/  base; int /*<<< orphan*/  mem; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* put ) (struct nouveau_fb*,int /*<<< orphan*/ *) ;} ;
struct nouveau_fb {TYPE_1__ ram; } ;

/* Variables and functions */
 struct nouveau_fb* FUNC0 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_fb*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct nouveau_object *object)
{
	struct nv50_instobj_priv *node = (void *)object;
	struct nouveau_fb *pfb = FUNC0(object);
	pfb->ram.put(pfb, &node->mem);
	FUNC1(&node->base);
}