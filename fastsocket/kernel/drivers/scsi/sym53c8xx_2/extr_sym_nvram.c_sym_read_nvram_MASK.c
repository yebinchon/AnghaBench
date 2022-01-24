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
struct TYPE_2__ {int /*<<< orphan*/  parisc; int /*<<< orphan*/  Tekram; int /*<<< orphan*/  Symbios; } ;
struct sym_nvram {int type; TYPE_1__ data; } ;
struct sym_device {int dummy; } ;

/* Variables and functions */
 int SYM_SYMBIOS_NVRAM ; 
 int SYM_TEKRAM_NVRAM ; 
 int /*<<< orphan*/  FUNC0 (struct sym_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sym_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sym_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sym_device*,int /*<<< orphan*/ *) ; 

int FUNC5(struct sym_device *np, struct sym_nvram *nvp)
{
	if (!FUNC2(np, &nvp->data.Symbios)) {
		nvp->type = SYM_SYMBIOS_NVRAM;
		FUNC0(np, &nvp->data.Symbios);
	} else if (!FUNC3(np, &nvp->data.Tekram)) {
		nvp->type = SYM_TEKRAM_NVRAM;
		FUNC1(np, &nvp->data.Tekram);
	} else {
		nvp->type = FUNC4(np, &nvp->data.parisc);
	}
	return nvp->type;
}