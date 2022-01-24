#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
struct TYPE_4__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ drm_radeon_kcmd_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int FUNC5 (int /*<<< orphan*/ *,struct drm_file*,TYPE_1__*,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct drm_device * dev,
			       struct drm_file *file_priv,
			       drm_radeon_kcmd_buffer_t *cmdbuf)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	unsigned int cmdsz;
	int ret;
	RING_LOCALS;

	FUNC2("\n");

	if ((ret = FUNC5(dev_priv, file_priv,
						  cmdbuf, &cmdsz))) {
		FUNC3("Packet verification failed\n");
		return ret;
	}

	FUNC1(cmdsz);
	FUNC4(cmdbuf->buffer, cmdsz);
	FUNC0();

	return 0;
}