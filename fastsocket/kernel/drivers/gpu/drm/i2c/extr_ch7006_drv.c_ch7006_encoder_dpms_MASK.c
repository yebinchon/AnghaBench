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
struct i2c_client {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct ch7006_state {int dummy; } ;
struct ch7006_priv {int last_dpms; struct ch7006_state state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH7006_POWER ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,struct ch7006_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 struct i2c_client* FUNC3 (struct drm_encoder*) ; 
 struct ch7006_priv* FUNC4 (struct drm_encoder*) ; 

__attribute__((used)) static void  FUNC5(struct drm_encoder *encoder, int mode)
{
	struct i2c_client *client = FUNC3(encoder);
	struct ch7006_priv *priv = FUNC4(encoder);
	struct ch7006_state *state = &priv->state;

	FUNC0(client, "\n");

	if (mode == priv->last_dpms)
		return;
	priv->last_dpms = mode;

	FUNC2(encoder);

	FUNC1(client, state, CH7006_POWER);
}