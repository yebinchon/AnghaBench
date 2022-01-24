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
struct drm_encoder {int /*<<< orphan*/  dev; } ;
struct drm_connector {int dummy; } ;
struct ch7006_priv {int scale; int norm; } ;
struct TYPE_2__ {scalar_t__ clock; } ;
struct ch7006_mode {int valid_scales; int valid_norms; TYPE_1__ mode; } ;

/* Variables and functions */
 struct ch7006_mode* ch7006_modes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 struct ch7006_priv* FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static int FUNC3(struct drm_encoder *encoder,
				    struct drm_connector *connector)
{
	struct ch7006_priv *priv = FUNC2(encoder);
	struct ch7006_mode *mode;
	int n = 0;

	for (mode = ch7006_modes; mode->mode.clock; mode++) {
		if (~mode->valid_scales & 1<<priv->scale ||
		    ~mode->valid_norms & 1<<priv->norm)
			continue;

		FUNC1(connector,
				FUNC0(encoder->dev, &mode->mode));

		n++;
	}

	return n;
}