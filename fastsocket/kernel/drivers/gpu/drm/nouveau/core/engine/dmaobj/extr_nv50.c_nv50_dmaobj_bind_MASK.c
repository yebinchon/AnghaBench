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
typedef  int u32 ;
struct nouveau_object {struct nouveau_dmaobj* parent; } ;
struct nouveau_gpuobj {int dummy; } ;
struct nouveau_dmaobj {int conf0; int target; int access; int /*<<< orphan*/  start; int /*<<< orphan*/  limit; } ;
struct nouveau_dmaeng {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NV50_CHANNEL_DMA_CLASS 154 
#define  NV50_CHANNEL_IND_CLASS 153 
#define  NV50_DISP_MAST_CLASS 152 
#define  NV50_DISP_OVLY_CLASS 151 
#define  NV50_DISP_SYNC_CLASS 150 
 int NV50_DMA_CONF0_COMP ; 
 int NV50_DMA_CONF0_COMP_NONE ; 
 int NV50_DMA_CONF0_COMP_VM ; 
 int NV50_DMA_CONF0_ENABLE ; 
 int NV50_DMA_CONF0_PART ; 
 int NV50_DMA_CONF0_PART_256 ; 
 int NV50_DMA_CONF0_PART_VM ; 
 int NV50_DMA_CONF0_PRIV ; 
 int NV50_DMA_CONF0_PRIV_US ; 
 int NV50_DMA_CONF0_PRIV_VM ; 
 int NV50_DMA_CONF0_TYPE ; 
 int NV50_DMA_CONF0_TYPE_LINEAR ; 
 int NV50_DMA_CONF0_TYPE_VM ; 
#define  NV84_CHANNEL_DMA_CLASS 149 
#define  NV84_CHANNEL_IND_CLASS 148 
#define  NV84_DISP_MAST_CLASS 147 
#define  NV84_DISP_OVLY_CLASS 146 
#define  NV84_DISP_SYNC_CLASS 145 
#define  NV94_DISP_MAST_CLASS 144 
#define  NV94_DISP_OVLY_CLASS 143 
#define  NV94_DISP_SYNC_CLASS 142 
#define  NVA0_DISP_MAST_CLASS 141 
#define  NVA0_DISP_OVLY_CLASS 140 
#define  NVA0_DISP_SYNC_CLASS 139 
#define  NVA3_DISP_MAST_CLASS 138 
#define  NVA3_DISP_OVLY_CLASS 137 
#define  NVA3_DISP_SYNC_CLASS 136 
 int /*<<< orphan*/  NV_ENGCTX_CLASS ; 
#define  NV_MEM_ACCESS_RO 135 
#define  NV_MEM_ACCESS_RW 134 
#define  NV_MEM_ACCESS_VM 133 
#define  NV_MEM_ACCESS_WO 132 
#define  NV_MEM_TARGET_PCI 131 
#define  NV_MEM_TARGET_PCI_NOSNOOP 130 
#define  NV_MEM_TARGET_VM 129 
#define  NV_MEM_TARGET_VRAM 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,int,int,int /*<<< orphan*/ ,struct nouveau_gpuobj**) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_object*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nouveau_dmaobj*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_gpuobj*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_dmaeng *dmaeng,
		 struct nouveau_object *parent,
		 struct nouveau_dmaobj *dmaobj,
		 struct nouveau_gpuobj **pgpuobj)
{
	u32 flags0 = FUNC3(dmaobj);
	u32 flags5 = 0x00000000;
	int ret;

	if (!FUNC2(parent, NV_ENGCTX_CLASS)) {
		switch (FUNC3(parent->parent)) {
		case NV50_CHANNEL_DMA_CLASS:
		case NV84_CHANNEL_DMA_CLASS:
		case NV50_CHANNEL_IND_CLASS:
		case NV84_CHANNEL_IND_CLASS:
		case NV50_DISP_MAST_CLASS:
		case NV84_DISP_MAST_CLASS:
		case NV94_DISP_MAST_CLASS:
		case NVA0_DISP_MAST_CLASS:
		case NVA3_DISP_MAST_CLASS:
		case NV50_DISP_SYNC_CLASS:
		case NV84_DISP_SYNC_CLASS:
		case NV94_DISP_SYNC_CLASS:
		case NVA0_DISP_SYNC_CLASS:
		case NVA3_DISP_SYNC_CLASS:
		case NV50_DISP_OVLY_CLASS:
		case NV84_DISP_OVLY_CLASS:
		case NV94_DISP_OVLY_CLASS:
		case NVA0_DISP_OVLY_CLASS:
		case NVA3_DISP_OVLY_CLASS:
			break;
		default:
			return -EINVAL;
		}
	}

	if (!(dmaobj->conf0 & NV50_DMA_CONF0_ENABLE)) {
		if (dmaobj->target == NV_MEM_TARGET_VM) {
			dmaobj->conf0  = NV50_DMA_CONF0_PRIV_VM;
			dmaobj->conf0 |= NV50_DMA_CONF0_PART_VM;
			dmaobj->conf0 |= NV50_DMA_CONF0_COMP_VM;
			dmaobj->conf0 |= NV50_DMA_CONF0_TYPE_VM;
		} else {
			dmaobj->conf0  = NV50_DMA_CONF0_PRIV_US;
			dmaobj->conf0 |= NV50_DMA_CONF0_PART_256;
			dmaobj->conf0 |= NV50_DMA_CONF0_COMP_NONE;
			dmaobj->conf0 |= NV50_DMA_CONF0_TYPE_LINEAR;
		}
	}

	flags0 |= (dmaobj->conf0 & NV50_DMA_CONF0_COMP) << 22;
	flags0 |= (dmaobj->conf0 & NV50_DMA_CONF0_TYPE) << 22;
	flags0 |= (dmaobj->conf0 & NV50_DMA_CONF0_PRIV);
	flags5 |= (dmaobj->conf0 & NV50_DMA_CONF0_PART);

	switch (dmaobj->target) {
	case NV_MEM_TARGET_VM:
		flags0 |= 0x00000000;
		break;
	case NV_MEM_TARGET_VRAM:
		flags0 |= 0x00010000;
		break;
	case NV_MEM_TARGET_PCI:
		flags0 |= 0x00020000;
		break;
	case NV_MEM_TARGET_PCI_NOSNOOP:
		flags0 |= 0x00030000;
		break;
	default:
		return -EINVAL;
	}

	switch (dmaobj->access) {
	case NV_MEM_ACCESS_VM:
		break;
	case NV_MEM_ACCESS_RO:
		flags0 |= 0x00040000;
		break;
	case NV_MEM_ACCESS_WO:
	case NV_MEM_ACCESS_RW:
		flags0 |= 0x00080000;
		break;
	}

	ret = FUNC1(parent, parent, 24, 32, 0, pgpuobj);
	if (ret == 0) {
		FUNC4(*pgpuobj, 0x00, flags0);
		FUNC4(*pgpuobj, 0x04, FUNC0(dmaobj->limit));
		FUNC4(*pgpuobj, 0x08, FUNC0(dmaobj->start));
		FUNC4(*pgpuobj, 0x0c, FUNC5(dmaobj->limit) << 24 |
					FUNC5(dmaobj->start));
		FUNC4(*pgpuobj, 0x10, 0x00000000);
		FUNC4(*pgpuobj, 0x14, flags5);
	}

	return ret;
}