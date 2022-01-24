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
struct intel_dp {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 struct intel_dp* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static struct intel_dp *FUNC2(struct drm_connector *connector)
{
	return FUNC0(&FUNC1(connector)->base);
}