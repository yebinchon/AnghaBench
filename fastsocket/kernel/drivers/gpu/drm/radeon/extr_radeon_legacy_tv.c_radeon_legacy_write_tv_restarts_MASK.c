#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  vrestart; int /*<<< orphan*/  hrestart; int /*<<< orphan*/  frestart; } ;
struct radeon_encoder_tv_dac {TYPE_2__ tv; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct radeon_encoder {struct radeon_encoder_tv_dac* enc_priv; TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_TV_FRESTART ; 
 int /*<<< orphan*/  RADEON_TV_HRESTART ; 
 int /*<<< orphan*/  RADEON_TV_VRESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct radeon_encoder *radeon_encoder)
{
	struct drm_device *dev = radeon_encoder->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder_tv_dac *tv_dac = radeon_encoder->enc_priv;
	FUNC0(RADEON_TV_FRESTART, tv_dac->tv.frestart);
	FUNC0(RADEON_TV_HRESTART, tv_dac->tv.hrestart);
	FUNC0(RADEON_TV_VRESTART, tv_dac->tv.vrestart);
}