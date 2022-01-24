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
struct talitos_private {scalar_t__ reg; } ;
struct talitos_desc {int hdr; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  DESC_HDR_SEL0_AESU 139 
#define  DESC_HDR_SEL0_AFEU 138 
#define  DESC_HDR_SEL0_CRCU 137 
#define  DESC_HDR_SEL0_DEU 136 
#define  DESC_HDR_SEL0_KEU 135 
 int DESC_HDR_SEL0_MASK ; 
#define  DESC_HDR_SEL0_MDEUA 134 
#define  DESC_HDR_SEL0_MDEUB 133 
#define  DESC_HDR_SEL0_PKEU 132 
#define  DESC_HDR_SEL0_RNG 131 
#define  DESC_HDR_SEL1_CRCU 130 
 int DESC_HDR_SEL1_MASK ; 
#define  DESC_HDR_SEL1_MDEUA 129 
#define  DESC_HDR_SEL1_MDEUB 128 
 scalar_t__ TALITOS_AESUISR ; 
 scalar_t__ TALITOS_AESUISR_LO ; 
 scalar_t__ TALITOS_AFEUISR ; 
 scalar_t__ TALITOS_AFEUISR_LO ; 
 scalar_t__ TALITOS_CRCUISR ; 
 scalar_t__ TALITOS_CRCUISR_LO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ TALITOS_DEUISR ; 
 scalar_t__ TALITOS_DEUISR_LO ; 
 scalar_t__ TALITOS_KEUISR ; 
 scalar_t__ TALITOS_KEUISR_LO ; 
 scalar_t__ TALITOS_MDEUISR ; 
 scalar_t__ TALITOS_MDEUISR_LO ; 
 scalar_t__ TALITOS_PKEUISR ; 
 scalar_t__ TALITOS_PKEUISR_LO ; 
 scalar_t__ TALITOS_RNGUISR ; 
 scalar_t__ TALITOS_RNGUISR_LO ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct talitos_private* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct device *dev, int ch,
			    struct talitos_desc *desc)
{
	struct talitos_private *priv = FUNC3(dev);
	int i;

	switch (desc->hdr & DESC_HDR_SEL0_MASK) {
	case DESC_HDR_SEL0_AFEU:
		FUNC2(dev, "AFEUISR 0x%08x_%08x\n",
			FUNC4(priv->reg + TALITOS_AFEUISR),
			FUNC4(priv->reg + TALITOS_AFEUISR_LO));
		break;
	case DESC_HDR_SEL0_DEU:
		FUNC2(dev, "DEUISR 0x%08x_%08x\n",
			FUNC4(priv->reg + TALITOS_DEUISR),
			FUNC4(priv->reg + TALITOS_DEUISR_LO));
		break;
	case DESC_HDR_SEL0_MDEUA:
	case DESC_HDR_SEL0_MDEUB:
		FUNC2(dev, "MDEUISR 0x%08x_%08x\n",
			FUNC4(priv->reg + TALITOS_MDEUISR),
			FUNC4(priv->reg + TALITOS_MDEUISR_LO));
		break;
	case DESC_HDR_SEL0_RNG:
		FUNC2(dev, "RNGUISR 0x%08x_%08x\n",
			FUNC4(priv->reg + TALITOS_RNGUISR),
			FUNC4(priv->reg + TALITOS_RNGUISR_LO));
		break;
	case DESC_HDR_SEL0_PKEU:
		FUNC2(dev, "PKEUISR 0x%08x_%08x\n",
			FUNC4(priv->reg + TALITOS_PKEUISR),
			FUNC4(priv->reg + TALITOS_PKEUISR_LO));
		break;
	case DESC_HDR_SEL0_AESU:
		FUNC2(dev, "AESUISR 0x%08x_%08x\n",
			FUNC4(priv->reg + TALITOS_AESUISR),
			FUNC4(priv->reg + TALITOS_AESUISR_LO));
		break;
	case DESC_HDR_SEL0_CRCU:
		FUNC2(dev, "CRCUISR 0x%08x_%08x\n",
			FUNC4(priv->reg + TALITOS_CRCUISR),
			FUNC4(priv->reg + TALITOS_CRCUISR_LO));
		break;
	case DESC_HDR_SEL0_KEU:
		FUNC2(dev, "KEUISR 0x%08x_%08x\n",
			FUNC4(priv->reg + TALITOS_KEUISR),
			FUNC4(priv->reg + TALITOS_KEUISR_LO));
		break;
	}

	switch (desc->hdr & DESC_HDR_SEL1_MASK) {
	case DESC_HDR_SEL1_MDEUA:
	case DESC_HDR_SEL1_MDEUB:
		FUNC2(dev, "MDEUISR 0x%08x_%08x\n",
			FUNC4(priv->reg + TALITOS_MDEUISR),
			FUNC4(priv->reg + TALITOS_MDEUISR_LO));
		break;
	case DESC_HDR_SEL1_CRCU:
		FUNC2(dev, "CRCUISR 0x%08x_%08x\n",
			FUNC4(priv->reg + TALITOS_CRCUISR),
			FUNC4(priv->reg + TALITOS_CRCUISR_LO));
		break;
	}

	for (i = 0; i < 8; i++)
		FUNC2(dev, "DESCBUF 0x%08x_%08x\n",
			FUNC4(priv->reg + FUNC0(ch) + 8*i),
			FUNC4(priv->reg + FUNC1(ch) + 8*i));
}