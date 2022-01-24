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
struct nvbios_init {scalar_t__ crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static inline int
FUNC1(struct nvbios_init *init)
{
	if (init->crtc >= 0)
		return init->crtc;
	FUNC0("script needs crtc\n");
	return 0;
}