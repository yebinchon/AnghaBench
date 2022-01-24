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
struct ch7006_priv {int /*<<< orphan*/  saved_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC2 (struct drm_encoder*) ; 
 struct ch7006_priv* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder)
{
	struct i2c_client *client = FUNC2(encoder);
	struct ch7006_priv *priv = FUNC3(encoder);

	FUNC0(client, "\n");

	FUNC1(client, &priv->saved_state);
}