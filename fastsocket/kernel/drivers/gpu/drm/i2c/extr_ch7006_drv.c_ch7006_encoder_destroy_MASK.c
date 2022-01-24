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
struct ch7006_priv {int /*<<< orphan*/  scale_property; } ;
struct TYPE_2__ {int /*<<< orphan*/ * slave_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ch7006_priv*) ; 
 struct ch7006_priv* FUNC3 (struct drm_encoder*) ; 
 TYPE_1__* FUNC4 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct ch7006_priv *priv = FUNC3(encoder);

	FUNC1(encoder->dev, priv->scale_property);

	FUNC2(priv);
	FUNC4(encoder)->slave_priv = NULL;

	FUNC0(encoder);
}