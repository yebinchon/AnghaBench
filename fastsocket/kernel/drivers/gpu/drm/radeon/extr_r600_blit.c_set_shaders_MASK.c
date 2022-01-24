#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {TYPE_1__* agp_buffer_map; TYPE_3__* dev_private; } ;
struct TYPE_7__ {int gart_buffers_offset; TYPE_2__* blit_vb; } ;
typedef  TYPE_3__ drm_radeon_private_t ;
struct TYPE_6__ {int offset; int used; } ;
struct TYPE_5__ {scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  R600_IT_SET_CONTEXT_REG ; 
 int R600_SET_CONTEXT_REG_OFFSET ; 
 int /*<<< orphan*/  R600_SH_ACTION_ENA ; 
 int R600_SQ_PGM_CF_OFFSET_PS ; 
 int R600_SQ_PGM_CF_OFFSET_VS ; 
 int R600_SQ_PGM_EXPORTS_PS ; 
 int R600_SQ_PGM_RESOURCES_PS ; 
 int R600_SQ_PGM_RESOURCES_VS ; 
 int R600_SQ_PGM_START_PS ; 
 int R600_SQ_PGM_START_VS ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * r6xx_ps ; 
 int r6xx_ps_size ; 
 int /*<<< orphan*/ * r6xx_vs ; 
 int r6xx_vs_size ; 

__attribute__((used)) static void
FUNC7(struct drm_device *dev)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	u64 gpu_addr;
	int i;
	u32 *vs, *ps;
	uint32_t sq_pgm_resources;
	RING_LOCALS;
	FUNC3("\n");

	/* load shaders */
	vs = (u32 *) ((char *)dev->agp_buffer_map->handle + dev_priv->blit_vb->offset);
	ps = (u32 *) ((char *)dev->agp_buffer_map->handle + dev_priv->blit_vb->offset + 256);

	for (i = 0; i < r6xx_vs_size; i++)
		vs[i] = FUNC6(r6xx_vs[i]);
	for (i = 0; i < r6xx_ps_size; i++)
		ps[i] = FUNC6(r6xx_ps[i]);

	dev_priv->blit_vb->used = 512;

	gpu_addr = dev_priv->gart_buffers_offset + dev_priv->blit_vb->offset;

	/* setup shader regs */
	sq_pgm_resources = (1 << 0);

	FUNC1(9 + 12);
	/* VS */
	FUNC4(FUNC2(R600_IT_SET_CONTEXT_REG, 1));
	FUNC4((R600_SQ_PGM_START_VS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC4(gpu_addr >> 8);

	FUNC4(FUNC2(R600_IT_SET_CONTEXT_REG, 1));
	FUNC4((R600_SQ_PGM_RESOURCES_VS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC4(sq_pgm_resources);

	FUNC4(FUNC2(R600_IT_SET_CONTEXT_REG, 1));
	FUNC4((R600_SQ_PGM_CF_OFFSET_VS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC4(0);

	/* PS */
	FUNC4(FUNC2(R600_IT_SET_CONTEXT_REG, 1));
	FUNC4((R600_SQ_PGM_START_PS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC4((gpu_addr + 256) >> 8);

	FUNC4(FUNC2(R600_IT_SET_CONTEXT_REG, 1));
	FUNC4((R600_SQ_PGM_RESOURCES_PS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC4(sq_pgm_resources | (1 << 28));

	FUNC4(FUNC2(R600_IT_SET_CONTEXT_REG, 1));
	FUNC4((R600_SQ_PGM_EXPORTS_PS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC4(2);

	FUNC4(FUNC2(R600_IT_SET_CONTEXT_REG, 1));
	FUNC4((R600_SQ_PGM_CF_OFFSET_PS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC4(0);
	FUNC0();

	FUNC5(dev_priv,
			    R600_SH_ACTION_ENA, 512, gpu_addr);
}