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
typedef  int /*<<< orphan*/  u32 ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  next_fence_to_post; } ;
typedef  TYPE_1__ drm_mga_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_LOCALS ; 
 int /*<<< orphan*/  DRM_CURRENTPID ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MGA_DMAPAD ; 
 int /*<<< orphan*/  MGA_SOFTRAP ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_mga_private_t *dev_priv = dev->dev_private;
	u32 *fence = data;
	DMA_LOCALS;

	if (!dev_priv) {
		FUNC4("called with no initialization\n");
		return -EINVAL;
	}

	FUNC3("pid=%d\n", DRM_CURRENTPID);

	/* I would normal do this assignment in the declaration of fence,
	 * but dev_priv may be NULL.
	 */

	*fence = dev_priv->next_fence_to_post;
	dev_priv->next_fence_to_post++;

	FUNC1(1);
	FUNC2(MGA_DMAPAD, 0x00000000,
		  MGA_DMAPAD, 0x00000000,
		  MGA_DMAPAD, 0x00000000, MGA_SOFTRAP, 0x00000000);
	FUNC0();

	return 0;
}