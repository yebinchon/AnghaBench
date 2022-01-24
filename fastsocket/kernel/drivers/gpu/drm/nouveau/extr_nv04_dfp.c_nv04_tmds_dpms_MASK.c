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
struct nouveau_encoder {int last_dpms; TYPE_1__* dcb; } ;
struct nouveau_drm {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nouveau_encoder* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder, int mode)
{
	struct nouveau_drm *drm = FUNC1(encoder->dev);
	struct nouveau_encoder *nv_encoder = FUNC2(encoder);

	if (nv_encoder->last_dpms == mode)
		return;
	nv_encoder->last_dpms = mode;

	FUNC0(drm, "Setting dpms mode %d on tmds encoder (output %d)\n",
		 mode, nv_encoder->dcb->index);

	FUNC3(encoder, mode);
	FUNC4(encoder, mode);
}