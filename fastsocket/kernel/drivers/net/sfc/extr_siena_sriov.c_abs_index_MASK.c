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
struct efx_vf {int index; int /*<<< orphan*/  efx; } ;

/* Variables and functions */
 int EFX_VI_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC1(struct efx_vf *vf, unsigned index)
{
	return EFX_VI_BASE + vf->index * FUNC0(vf->efx) + index;
}