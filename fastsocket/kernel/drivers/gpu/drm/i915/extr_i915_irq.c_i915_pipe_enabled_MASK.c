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
struct drm_device {scalar_t__ dev_private; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PIPECONF_ENABLE ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(struct drm_device *dev, int pipe)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	enum transcoder cpu_transcoder = FUNC2(dev_priv,
								      pipe);

	return FUNC0(FUNC1(cpu_transcoder)) & PIPECONF_ENABLE;
}