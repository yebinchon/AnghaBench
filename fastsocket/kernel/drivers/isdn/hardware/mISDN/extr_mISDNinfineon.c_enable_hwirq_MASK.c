#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/  start; int /*<<< orphan*/  p; } ;
struct inf_hw {TYPE_2__ cfg; TYPE_1__* ci; } ;
struct TYPE_3__ {int typ; } ;

/* Variables and functions */
 scalar_t__ ELSA_IRQ_ADDR ; 
 scalar_t__ GAZEL_HSCX_EN ; 
 scalar_t__ GAZEL_INCSR ; 
 scalar_t__ GAZEL_IPAC_EN ; 
 scalar_t__ GAZEL_ISAC_EN ; 
 scalar_t__ GAZEL_PCI_EN ; 
#define  INF_DIVA201 137 
#define  INF_DIVA202 136 
#define  INF_GAZEL_R685 135 
#define  INF_GAZEL_R753 134 
#define  INF_NICCY 133 
#define  INF_QS1000 132 
#define  INF_QS3000 131 
#define  INF_SAPHIR3 130 
#define  INF_SCT_1 129 
#define  INF_SPEEDWIN 128 
 scalar_t__ NICCY_IRQ_CTRL_REG ; 
 scalar_t__ NICCY_IRQ_ENABLE ; 
 int /*<<< orphan*/  PITA_INT0_ENABLE ; 
 scalar_t__ QS1000_IRQ_ON ; 
 scalar_t__ QS3000_IRQ_ON ; 
 scalar_t__ SCT_PLX_IRQ_ADDR ; 
 int /*<<< orphan*/  SCT_PLX_IRQ_ENABLE ; 
 scalar_t__ TIGER_AUX_IRQMASK ; 
 scalar_t__ TIGER_IRQ_BIT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct inf_hw *hw)
{
	u16 w;
	u32 val;

	switch (hw->ci->typ) {
	case INF_DIVA201:
	case INF_DIVA202:
		FUNC5(PITA_INT0_ENABLE, hw->cfg.p);
		break;
	case INF_SPEEDWIN:
	case INF_SAPHIR3:
		FUNC2(TIGER_IRQ_BIT, (u32)hw->cfg.start + TIGER_AUX_IRQMASK);
		break;
	case INF_QS1000:
		FUNC2(QS1000_IRQ_ON, (u32)hw->cfg.start + ELSA_IRQ_ADDR);
		break;
	case INF_QS3000:
		FUNC2(QS3000_IRQ_ON, (u32)hw->cfg.start + ELSA_IRQ_ADDR);
		break;
	case INF_NICCY:
		val = FUNC0((u32)hw->cfg.start + NICCY_IRQ_CTRL_REG);
		val |= NICCY_IRQ_ENABLE;;
		FUNC3(val, (u32)hw->cfg.start + NICCY_IRQ_CTRL_REG);
		break;
	case INF_SCT_1:
		w = FUNC1((u32)hw->cfg.start + SCT_PLX_IRQ_ADDR);
		w |= SCT_PLX_IRQ_ENABLE;
		FUNC4(w, (u32)hw->cfg.start + SCT_PLX_IRQ_ADDR);
		break;
	case INF_GAZEL_R685:
		FUNC2(GAZEL_ISAC_EN + GAZEL_HSCX_EN + GAZEL_PCI_EN,
			(u32)hw->cfg.start + GAZEL_INCSR);
		break;
	case INF_GAZEL_R753:
		FUNC2(GAZEL_IPAC_EN + GAZEL_PCI_EN,
			(u32)hw->cfg.start + GAZEL_INCSR);
		break;
	default:
		break;
	}
}