#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {TYPE_1__* dev; } ;
struct intel_encoder {TYPE_4__ base; } ;
struct TYPE_7__ {int dvo_reg; TYPE_2__* dev_ops; } ;
struct intel_dvo {TYPE_3__ dev; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* dpms ) (TYPE_3__*,int) ;} ;
struct TYPE_5__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int DVO_ENABLE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct intel_dvo* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC4(struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = encoder->base.dev->dev_private;
	struct intel_dvo *intel_dvo = FUNC2(&encoder->base);
	u32 dvo_reg = intel_dvo->dev.dvo_reg;
	u32 temp = FUNC0(dvo_reg);

	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, false);
	FUNC1(dvo_reg, temp & ~DVO_ENABLE);
	FUNC0(dvo_reg);
}