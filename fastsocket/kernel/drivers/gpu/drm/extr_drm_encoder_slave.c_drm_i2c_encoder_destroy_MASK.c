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
struct module {int dummy; } ;
struct i2c_client {TYPE_2__* driver; } ;
struct drm_encoder_slave {int /*<<< orphan*/ * bus_priv; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_3__ {struct module* owner; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;

/* Variables and functions */
 struct i2c_client* FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct module*) ; 
 struct drm_encoder_slave* FUNC3 (struct drm_encoder*) ; 

void FUNC4(struct drm_encoder *drm_encoder)
{
	struct drm_encoder_slave *encoder = FUNC3(drm_encoder);
	struct i2c_client *client = FUNC0(drm_encoder);
	struct module *module = client->driver->driver.owner;

	FUNC1(client);
	encoder->bus_priv = NULL;

	FUNC2(module);
}