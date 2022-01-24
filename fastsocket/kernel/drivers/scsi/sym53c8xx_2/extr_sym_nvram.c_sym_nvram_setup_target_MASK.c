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
struct sym_tcb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  Tekram; int /*<<< orphan*/  Symbios; } ;
struct sym_nvram {int type; TYPE_1__ data; } ;

/* Variables and functions */
#define  SYM_SYMBIOS_NVRAM 129 
#define  SYM_TEKRAM_NVRAM 128 
 int /*<<< orphan*/  FUNC0 (struct sym_tcb*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_tcb*,int,int /*<<< orphan*/ *) ; 

void FUNC2(struct sym_tcb *tp, int target, struct sym_nvram *nvp)
{
	switch (nvp->type) {
	case SYM_SYMBIOS_NVRAM:
		FUNC0(tp, target, &nvp->data.Symbios);
		break;
	case SYM_TEKRAM_NVRAM:
		FUNC1(tp, target, &nvp->data.Tekram);
		break;
	default:
		break;
	}
}