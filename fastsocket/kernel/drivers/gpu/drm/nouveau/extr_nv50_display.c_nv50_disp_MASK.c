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
struct nv50_disp {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct nv50_disp* priv; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct drm_device*) ; 

__attribute__((used)) static struct nv50_disp *
FUNC1(struct drm_device *dev)
{
	return FUNC0(dev)->priv;
}