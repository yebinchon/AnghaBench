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
struct nv04_vmmgr_priv {int dummy; } ;
struct nouveau_vm {scalar_t__ vmm; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nv04_vmmgr_priv*,int) ; 
 TYPE_1__* FUNC3 (struct nv04_vmmgr_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv04_vmmgr_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv04_vmmgr_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nv04_vmmgr_priv*,int,int) ; 

__attribute__((used)) static void
FUNC7(struct nouveau_vm *vm)
{
	struct nv04_vmmgr_priv *priv = (void *)vm->vmm;

	FUNC0(&FUNC3(priv)->mutex);
	FUNC6(priv, 0x100810, 0x00000022);
	if (!FUNC4(priv, 0x100810, 0x00000020, 0x00000020)) {
		FUNC5(priv, "flush timeout, 0x%08x\n",
			FUNC2(priv, 0x100810));
	}
	FUNC6(priv, 0x100810, 0x00000000);
	FUNC1(&FUNC3(priv)->mutex);
}