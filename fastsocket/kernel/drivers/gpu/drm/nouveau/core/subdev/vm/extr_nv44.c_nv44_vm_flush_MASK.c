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
struct TYPE_2__ {int limit; } ;
struct nv04_vmmgr_priv {TYPE_1__ base; } ;
struct nouveau_vm {scalar_t__ vmm; } ;

/* Variables and functions */
 int NV44_GART_PAGE ; 
 int /*<<< orphan*/  FUNC0 (struct nv04_vmmgr_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nv04_vmmgr_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv04_vmmgr_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv04_vmmgr_priv*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_vm *vm)
{
	struct nv04_vmmgr_priv *priv = (void *)vm->vmm;
	FUNC3(priv, 0x100814, priv->base.limit - NV44_GART_PAGE);
	FUNC3(priv, 0x100808, 0x00000020);
	if (!FUNC2(priv, 0x100808, 0x00000001, 0x00000001))
		FUNC0(priv, "timeout: 0x%08x\n", FUNC1(priv, 0x100808));
	FUNC3(priv, 0x100808, 0x00000000);
}