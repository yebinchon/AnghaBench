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
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct ch7006_priv {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*,struct drm_display_mode const*) ; 
 struct ch7006_priv* FUNC1 (struct drm_encoder*) ; 

__attribute__((used)) static bool FUNC2(struct drm_encoder *encoder,
				      const struct drm_display_mode *mode,
				      struct drm_display_mode *adjusted_mode)
{
	struct ch7006_priv *priv = FUNC1(encoder);

	/* The ch7006 is painfully picky with the input timings so no
	 * custom modes for now... */

	priv->mode = FUNC0(encoder, mode);

	return !!priv->mode;
}