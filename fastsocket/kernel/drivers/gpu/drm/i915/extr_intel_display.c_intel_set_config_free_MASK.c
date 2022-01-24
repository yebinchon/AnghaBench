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
struct intel_set_config {struct intel_set_config* save_encoder_crtcs; struct intel_set_config* save_connector_encoders; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_set_config*) ; 

__attribute__((used)) static void FUNC1(struct intel_set_config *config)
{
	if (!config)
		return;

	FUNC0(config->save_connector_encoders);
	FUNC0(config->save_encoder_crtcs);
	FUNC0(config);
}