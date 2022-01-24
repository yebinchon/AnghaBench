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
typedef  int u64 ;
struct pci_pbm_info {int /*<<< orphan*/  name; scalar_t__ controller_regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int BUS_ERROR_UNMAP ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SAFARI_ERR ; 
 int SAFARI_ERRLOG_ERROUT ; 
 scalar_t__ SCHIZO_SAFARI_ERRLOG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_pbm_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct pci_pbm_info *pbm = dev_id;
	u64 errlog;

	errlog = FUNC2(pbm->controller_regs + SCHIZO_SAFARI_ERRLOG);
	FUNC3(errlog & ~(SAFARI_ERRLOG_ERROUT),
		   pbm->controller_regs + SCHIZO_SAFARI_ERRLOG);

	if (!(errlog & BUS_ERROR_UNMAP)) {
		FUNC0("%s: Unexpected Safari/JBUS error interrupt, errlog[%016llx]\n",
		       pbm->name, errlog);

		return IRQ_HANDLED;
	}

	FUNC0("%s: Safari/JBUS interrupt, UNMAPPED error, interrogating IOMMUs.\n",
	       pbm->name);
	FUNC1(pbm, SAFARI_ERR);

	return IRQ_HANDLED;
}