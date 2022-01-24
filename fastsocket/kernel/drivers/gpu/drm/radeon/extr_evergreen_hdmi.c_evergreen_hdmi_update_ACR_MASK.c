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
struct radeon_hdmi_acr {int /*<<< orphan*/  n_48khz; int /*<<< orphan*/  cts_48khz; int /*<<< orphan*/  n_44_1khz; int /*<<< orphan*/  cts_44_1khz; int /*<<< orphan*/  n_32khz; int /*<<< orphan*/  cts_32khz; } ;
struct radeon_encoder_atom_dig {TYPE_1__* afmt; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_2__ {scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ HDMI_ACR_32_0 ; 
 scalar_t__ HDMI_ACR_32_1 ; 
 scalar_t__ HDMI_ACR_44_0 ; 
 scalar_t__ HDMI_ACR_44_1 ; 
 scalar_t__ HDMI_ACR_48_0 ; 
 scalar_t__ HDMI_ACR_48_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct radeon_hdmi_acr FUNC4 (scalar_t__) ; 
 struct radeon_encoder* FUNC5 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC6(struct drm_encoder *encoder, uint32_t clock)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_hdmi_acr acr = FUNC4(clock);
	struct radeon_encoder *radeon_encoder = FUNC5(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
	uint32_t offset = dig->afmt->offset;

	FUNC3(HDMI_ACR_32_0 + offset, FUNC0(acr.cts_32khz));
	FUNC3(HDMI_ACR_32_1 + offset, acr.n_32khz);

	FUNC3(HDMI_ACR_44_0 + offset, FUNC1(acr.cts_44_1khz));
	FUNC3(HDMI_ACR_44_1 + offset, acr.n_44_1khz);

	FUNC3(HDMI_ACR_48_0 + offset, FUNC2(acr.cts_48khz));
	FUNC3(HDMI_ACR_48_1 + offset, acr.n_48khz);
}