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
struct sg_table {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;

/* Variables and functions */
 unsigned int AGP_USER_CACHED_MEMORY ; 
 unsigned int AGP_USER_MEMORY ; 
 int I915_CACHE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sg_table*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct drm_device *dev,
				     struct sg_table *st,
				     unsigned int pg_start,
				     enum i915_cache_level cache_level)
{
	unsigned int flags = (cache_level == I915_CACHE_NONE) ?
		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;

	FUNC0(st, pg_start, flags);

}