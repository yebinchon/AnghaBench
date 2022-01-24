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
struct sil164_priv {int /*<<< orphan*/  saved_slave_state; scalar_t__ duallink_slave; int /*<<< orphan*/  saved_state; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct sil164_priv* FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static void
FUNC3(struct drm_encoder *encoder)
{
	struct sil164_priv *priv = FUNC2(encoder);

	FUNC1(FUNC0(encoder),
			     priv->saved_state);

	if (priv->duallink_slave)
		FUNC1(priv->duallink_slave,
				     priv->saved_slave_state);
}