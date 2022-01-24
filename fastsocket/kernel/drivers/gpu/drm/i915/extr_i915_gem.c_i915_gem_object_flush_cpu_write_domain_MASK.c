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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ write_domain; int /*<<< orphan*/  read_domains; int /*<<< orphan*/  dev; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ I915_GEM_DOMAIN_CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct drm_i915_gem_object *obj)
{
	uint32_t old_write_domain;

	if (obj->base.write_domain != I915_GEM_DOMAIN_CPU)
		return;

	FUNC1(obj);
	FUNC0(obj->base.dev);
	old_write_domain = obj->base.write_domain;
	obj->base.write_domain = 0;

	FUNC2(obj,
					    obj->base.read_domains,
					    old_write_domain);
}