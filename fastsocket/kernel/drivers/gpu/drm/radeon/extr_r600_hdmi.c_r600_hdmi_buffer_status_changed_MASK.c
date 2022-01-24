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
struct radeon_encoder_atom_dig {TYPE_1__* afmt; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int last_buffer_filled_status; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int FUNC0 (struct drm_encoder*) ; 
 struct radeon_encoder* FUNC1 (struct drm_encoder*) ; 

int FUNC2(struct drm_encoder *encoder)
{
	struct radeon_encoder *radeon_encoder = FUNC1(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
	int status, result;

	if (!dig->afmt || !dig->afmt->enabled)
		return 0;

	status = FUNC0(encoder);
	result = dig->afmt->last_buffer_filled_status != status;
	dig->afmt->last_buffer_filled_status = status;

	return result;
}