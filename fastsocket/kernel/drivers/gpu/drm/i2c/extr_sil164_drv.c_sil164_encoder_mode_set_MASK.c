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
struct sil164_priv {int /*<<< orphan*/  config; scalar_t__ duallink_slave; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 scalar_t__ FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 struct sil164_priv* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC4(struct drm_encoder *encoder,
			struct drm_display_mode *mode,
			struct drm_display_mode *adjusted_mode)
{
	struct sil164_priv *priv = FUNC3(encoder);
	bool duallink = adjusted_mode->clock > 165000;

	FUNC2(FUNC0(encoder),
			  &priv->config, duallink);

	if (priv->duallink_slave)
		FUNC2(priv->duallink_slave,
				  &priv->config, duallink);

	FUNC1(encoder, DRM_MODE_DPMS_ON);
}